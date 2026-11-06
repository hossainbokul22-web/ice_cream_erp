import 'package:drift/drift.dart';
import '../database/app_database.dart';

class StockService {
  final AppDatabase db;

  StockService(this.db);

  /// Purchase Receipt - adds stock + creates batch if needed
  Future<void> receivePurchase({
    required int itemId,
    required double qty,
    required double unitCost,
    required String batchNo,
    DateTime? mfgDate,
    DateTime? expiryDate,
    int? warehouseId,
    String? narration,
  }) async {
    await db.transaction(() async {
      // Create or update batch
      final existing = await (db.select(db.batches)
            ..where((b) => b.batchNo.equals(batchNo) & b.itemId.equals(itemId)))
          .getSingleOrNull();

      int batchId;
      if (existing != null) {
        batchId = existing.id;
        await (db.update(db.batches)..where((b) => b.id.equals(batchId))).write(
          BatchesCompanion(
            currentQty: Value(existing.currentQty + qty),
            initialQty: Value(existing.initialQty + qty),
          ),
        );
      } else {
        batchId = await db.into(db.batches).insert(BatchesCompanion.insert(
              batchNo: batchNo,
              itemId: itemId,
              warehouseId: Value(warehouseId),
              mfgDate: Value(mfgDate),
              expiryDate: Value(expiryDate),
              initialQty: qty,
              currentQty: qty,
              unitCost: Value(unitCost),
            ));
      }

      // Stock Ledger IN
      await db.into(db.stockLedger).insert(StockLedgerCompanion.insert(
            voucherType: 'Purchase',
            itemId: itemId,
            batchId: Value(batchId),
            warehouseId: Value(warehouseId),
            qtyIn: Value(qty),
            unitCost: Value(unitCost),
            transactionDate: DateTime.now(),
            narration: Value(narration ?? 'Purchase Receipt'),
          ));
    });
  }

  /// Get stock summary with batch details
  Future<List<Map<String, dynamic>>> getStockSummary({int? warehouseId}) async {
    final items = await (db.select(db.items)..where((i) => i.isActive.equals(true))).get();
    List<Map<String, dynamic>> summary = [];

    for (final item in items) {
      final stock = await db.getItemStock(item.id, warehouseId: warehouseId);
      final batches = await db.getAvailableBatches(item.id);

      summary.add({
        'item': item,
        'currentStock': stock,
        'batches': batches,
        'isLowStock': stock < item.minStock,
      });
    }
    return summary;
  }

  /// Tank status overview
  Future<List<Map<String, dynamic>>> getTankStatus() async {
    final tanks = await db.select(db.tanks).get();
    List<Map<String, dynamic>> result = [];

    for (final tank in tanks) {
      String? itemName;
      if (tank.currentItemId != null) {
        final item = await (db.select(db.items)..where((i) => i.id.equals(tank.currentItemId!))).getSingleOrNull();
        itemName = item?.itemName;
      }

      result.add({
        'tank': tank,
        'itemName': itemName,
        'fillPercent': tank.capacityLiter > 0 ? (tank.currentQty / tank.capacityLiter) * 100 : 0,
        'availableCapacity': tank.capacityLiter - tank.currentQty,
      });
    }
    return result;
  }
}
