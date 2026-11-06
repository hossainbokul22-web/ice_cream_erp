import 'package:drift/drift.dart';
import '../database/app_database.dart';

class ProductionService {
  final AppDatabase db;

  ProductionService(this.db);

  /// Create a new Production Order from Recipe
  Future<int> createProductionOrder({
    required String orderNo,
    required int recipeId,
    required double targetMixQty,
    required String targetUnit,
    int? mixingTankId,
    int? agingTankId,
    String? notes,
  }) async {
    final recipe = await (db.select(db.recipes)..where((r) => r.id.equals(recipeId))).getSingle();

    return db.into(db.productionOrders).insert(ProductionOrdersCompanion.insert(
          orderNo: orderNo,
          recipeId: recipeId,
          targetQty: targetMixQty,
          targetUnit: targetUnit,
          plannedOverrun: Value(recipe.targetOverrun),
          mixingTankId: Value(mixingTankId),
          agingTankId: Value(agingTankId),
          notes: Value(notes),
          status: const Value('Planned'),
        ));
  }

  /// Get required materials for a Production Order (scaled from Recipe)
  Future<List<Map<String, dynamic>>> getRequiredMaterials(int productionOrderId) async {
    final order = await (db.select(db.productionOrders)..where((o) => o.id.equals(productionOrderId))).getSingle();
    final recipe = await (db.select(db.recipes)..where((r) => r.id.equals(order.recipeId))).getSingle();
    final lines = await (db.select(db.recipeLines)..where((l) => l.recipeId.equals(recipe.id))).get();

    final scaleFactor = order.targetQty / recipe.baseQty;

    List<Map<String, dynamic>> materials = [];
    for (final line in lines) {
      final item = await (db.select(db.items)..where((i) => i.id.equals(line.itemId))).getSingle();
      final requiredQty = line.qty * scaleFactor * (1 + (line.wastagePercent / 100));

      materials.add({
        'itemId': item.id,
        'itemCode': item.itemCode,
        'itemName': item.itemName,
        'requiredQty': requiredQty,
        'unit': line.unit,
        'wastagePercent': line.wastagePercent,
      });
    }
    return materials;
  }

  /// Issue materials against Production Order (creates stock_ledger out + production_issues)
  Future<void> issueMaterials({
    required int productionOrderId,
    required List<Map<String, dynamic>> issues, // [{itemId, batchId, qty, unitCost}]
  }) async {
    await db.transaction(() async {
      double totalCost = 0;

      for (final issue in issues) {
        final itemId = issue['itemId'] as int;
        final batchId = issue['batchId'] as int?;
        final qty = issue['qty'] as double;
        final unitCost = (issue['unitCost'] as num?)?.toDouble() ?? 0.0;

        // Insert Production Issue
        await db.into(db.productionIssues).insert(ProductionIssuesCompanion.insert(
              productionOrderId: productionOrderId,
              itemId: itemId,
              batchId: Value(batchId),
              qty: qty,
              unitCost: Value(unitCost),
            ));

        // Stock Ledger - OUT
        await db.into(db.stockLedger).insert(StockLedgerCompanion.insert(
              voucherType: 'ProductionIssue',
              itemId: itemId,
              batchId: Value(batchId),
              qtyOut: Value(qty),
              unitCost: Value(unitCost),
              transactionDate: DateTime.now(),
              narration: Value('Issued to Production Order'),
            ));

        // Update Batch current qty
        if (batchId != null) {
          final batch = await (db.select(db.batches)..where((b) => b.id.equals(batchId))).getSingle();
          await (db.update(db.batches)..where((b) => b.id.equals(batchId))).write(
            BatchesCompanion(currentQty: Value(batch.currentQty - qty)),
          );
        }

        totalCost += qty * unitCost;
      }

      // Update Production Order total material cost & status
      await (db.update(db.productionOrders)..where((o) => o.id.equals(productionOrderId))).write(
        ProductionOrdersCompanion(
          totalMaterialCost: Value(totalCost),
          status: const Value('Mixing'),
          startDate: Value(DateTime.now()),
        ),
      );
    });
  }

  /// Complete Mixing stage - record actual mix qty and assign tank
  Future<void> completeMixing({
    required int productionOrderId,
    required double actualMixQty,
    required int mixingTankId,
  }) async {
    await db.transaction(() async {
      await (db.update(db.productionOrders)..where((o) => o.id.equals(productionOrderId))).write(
        ProductionOrdersCompanion(
          actualMixQty: Value(actualMixQty),
          mixingTankId: Value(mixingTankId),
          status: const Value('Aging'),
        ),
      );

      // Update Tank
      final order = await (db.select(db.productionOrders)..where((o) => o.id.equals(productionOrderId))).getSingle();
      await (db.update(db.tanks)..where((t) => t.id.equals(mixingTankId))).write(
        TanksCompanion(
          currentQty: Value(actualMixQty),
          status: const Value('InUse'),
          currentItemId: Value(order.recipeId), // temporary, better to store mix item
        ),
      );
    });
  }

  /// Move to Aging Tank
  Future<void> moveToAging({
    required int productionOrderId,
    required int agingTankId,
  }) async {
    final order = await (db.select(db.productionOrders)..where((o) => o.id.equals(productionOrderId))).getSingle();

    await db.transaction(() async {
      // Clear mixing tank
      if (order.mixingTankId != null) {
        await (db.update(db.tanks)..where((t) => t.id.equals(order.mixingTankId!))).write(
          const TanksCompanion(
            currentQty: Value(0),
            status: Value('Empty'),
            currentItemId: Value(null),
            currentBatchId: Value(null),
          ),
        );
      }

      // Fill aging tank
      await (db.update(db.tanks)..where((t) => t.id.equals(agingTankId))).write(
        TanksCompanion(
          currentQty: Value(order.actualMixQty ?? 0),
          status: const Value('InUse'),
        ),
      );

      await (db.update(db.productionOrders)..where((o) => o.id.equals(productionOrderId))).write(
        ProductionOrdersCompanion(
          agingTankId: Value(agingTankId),
          status: const Value('Aging'),
        ),
      );
    });
  }

  /// Complete Production with Overrun calculation + Finished Goods Receipt
  Future<void> completeProduction({
    required int productionOrderId,
    required double actualFinishedQty, // in Liters
    required String finishedBatchNo,
    required int finishedItemId,
    required int warehouseId,
    DateTime? mfgDate,
    DateTime? expiryDate,
  }) async {
    final order = await (db.select(db.productionOrders)..where((o) => o.id.equals(productionOrderId))).getSingle();

    if (order.actualMixQty == null || order.actualMixQty! <= 0) {
      throw Exception('Actual Mix Qty not recorded');
    }

    final actualOverrun = ((actualFinishedQty - order.actualMixQty!) / order.actualMixQty!) * 100;
    final actualYield = (order.actualMixQty! / order.targetQty) * 100;

    // Cost per Liter Finished
    final costPerLiterMix = order.totalMaterialCost / order.actualMixQty!;
    final costPerLiterFinished = costPerLiterMix / (1 + (actualOverrun / 100));

    await db.transaction(() async {
      // 1. Create Finished Goods Batch
      final batchId = await db.into(db.batches).insert(BatchesCompanion.insert(
            batchNo: finishedBatchNo,
            itemId: finishedItemId,
            warehouseId: Value(warehouseId),
            mfgDate: Value(mfgDate ?? DateTime.now()),
            expiryDate: Value(expiryDate),
            initialQty: actualFinishedQty,
            currentQty: actualFinishedQty,
            unitCost: Value(costPerLiterFinished),
          ));

      // 2. Production Receipt
      await db.into(db.productionReceipts).insert(ProductionReceiptsCompanion.insert(
            productionOrderId: productionOrderId,
            itemId: finishedItemId,
            batchNo: finishedBatchNo,
            qty: actualFinishedQty,
            unit: const Value('L'),
            overrunPercent: Value(actualOverrun),
            unitCost: Value(costPerLiterFinished),
            mfgDate: Value(mfgDate ?? DateTime.now()),
            expiryDate: Value(expiryDate),
            warehouseId: Value(warehouseId),
          ));

      // 3. Stock Ledger - IN
      await db.into(db.stockLedger).insert(StockLedgerCompanion.insert(
            voucherType: 'ProductionReceipt',
            itemId: finishedItemId,
            batchId: Value(batchId),
            warehouseId: Value(warehouseId),
            qtyIn: Value(actualFinishedQty),
            unitCost: Value(costPerLiterFinished),
            transactionDate: DateTime.now(),
            narration: Value('Production completed. Overrun: ${actualOverrun.toStringAsFixed(1)}%'),
          ));

      // 4. Clear Aging Tank
      if (order.agingTankId != null) {
        await (db.update(db.tanks)..where((t) => t.id.equals(order.agingTankId!))).write(
          const TanksCompanion(
            currentQty: Value(0),
            status: Value('Empty'),
            currentItemId: Value(null),
            currentBatchId: Value(null),
          ),
        );
      }

      // 5. Update Production Order
      await (db.update(db.productionOrders)..where((o) => o.id.equals(productionOrderId))).write(
        ProductionOrdersCompanion(
          actualFinishedQty: Value(actualFinishedQty),
          actualOverrun: Value(actualOverrun),
          actualYield: Value(actualYield),
          status: const Value('Completed'),
          endDate: Value(DateTime.now()),
        ),
      );
    });
  }

  /// Get production order with calculated fields
  Future<Map<String, dynamic>> getOrderDetails(int orderId) async {
    final order = await (db.select(db.productionOrders)..where((o) => o.id.equals(orderId))).getSingle();
    final recipe = await (db.select(db.recipes)..where((r) => r.id.equals(order.recipeId))).getSingle();
    final issues = await (db.select(db.productionIssues)..where((i) => i.productionOrderId.equals(orderId))).get();

    return {
      'order': order,
      'recipe': recipe,
      'issues': issues,
      'costPerLiterMix': order.actualMixQty != null && order.actualMixQty! > 0
          ? order.totalMaterialCost / order.actualMixQty!
          : null,
      'costPerLiterFinished': order.actualOverrun != null && order.actualMixQty != null
          ? (order.totalMaterialCost / order.actualMixQty!) / (1 + (order.actualOverrun! / 100))
          : null,
    };
  }
}
