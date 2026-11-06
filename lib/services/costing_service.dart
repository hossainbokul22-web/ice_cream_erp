import 'package:drift/drift.dart';
import '../database/app_database.dart';

class CostingService {
  final AppDatabase db;

  CostingService(this.db);

  /// Calculate Cost per Liter of Finished Ice Cream
  /// Formula: (Material Cost / Mix Qty) / (1 + Overrun/100)
  double calculateCostPerLiterFinished({
    required double totalMaterialCost,
    required double actualMixQty,
    required double actualOverrunPercent,
  }) {
    if (actualMixQty <= 0) return 0;
    final costPerLiterMix = totalMaterialCost / actualMixQty;
    return costPerLiterMix / (1 + (actualOverrunPercent / 100));
  }

  /// Calculate how much Mix is needed for desired Finished Volume at given Overrun
  double calculateRequiredMixQty({
    required double desiredFinishedQty,
    required double targetOverrunPercent,
  }) {
    return desiredFinishedQty / (1 + (targetOverrunPercent / 100));
  }

  /// Cost breakdown for a completed production order
  Future<Map<String, dynamic>> getBatchCostBreakdown(int productionOrderId) async {
    final order = await (db.select(db.productionOrders)..where((o) => o.id.equals(productionOrderId))).getSingle();
    final issues = await (db.select(db.productionIssues)..where((i) => i.productionOrderId.equals(productionOrderId))).get();
    final receipt = await (db.select(db.productionReceipts)..where((r) => r.productionOrderId.equals(productionOrderId))).getSingleOrNull();

    double materialCost = 0;
    List<Map<String, dynamic>> materialDetails = [];

    for (final issue in issues) {
      final item = await (db.select(db.items)..where((i) => i.id.equals(issue.itemId))).getSingle();
      final lineCost = (issue.qty) * (issue.unitCost ?? 0);
      materialCost += lineCost;

      materialDetails.add({
        'itemName': item.itemName,
        'qty': issue.qty,
        'unitCost': issue.unitCost,
        'lineCost': lineCost,
      });
    }

    final mixQty = order.actualMixQty ?? 0;
    final finishedQty = order.actualFinishedQty ?? 0;
    final overrun = order.actualOverrun ?? 0;

    final costPerLiterMix = mixQty > 0 ? materialCost / mixQty : 0;
    final costPerLiterFinished = calculateCostPerLiterFinished(
      totalMaterialCost: materialCost,
      actualMixQty: mixQty,
      actualOverrunPercent: overrun,
    );

    return {
      'productionOrderNo': order.orderNo,
      'materialCost': materialCost,
      'materialDetails': materialDetails,
      'actualMixQty': mixQty,
      'actualFinishedQty': finishedQty,
      'actualOverrun': overrun,
      'actualYield': order.actualYield,
      'costPerLiterMix': costPerLiterMix,
      'costPerLiterFinished': costPerLiterFinished,
      'totalFinishedCost': costPerLiterFinished * finishedQty,
      'receipt': receipt,
    };
  }

  /// Simple Moving Average cost update helper (can be called after purchase)
  Future<void> updateMovingAverageCost(int itemId, double newQty, double newCost) async {
    // This is a simplified version. In full implementation we maintain cost layers or pure moving average.
    final currentStock = await db.getItemStock(itemId);
    final item = await (db.select(db.items)..where((i) => i.id.equals(itemId))).getSingle();

    if (currentStock <= 0) {
      await (db.update(db.items)..where((i) => i.id.equals(itemId))).write(
        ItemsCompanion(standardCost: Value(newCost)),
      );
      return;
    }

    final currentValue = currentStock * item.standardCost;
    final newValue = newQty * newCost;
    final totalQty = currentStock + newQty;
    final newAvgCost = (currentValue + newValue) / totalQty;

    await (db.update(db.items)..where((i) => i.id.equals(itemId))).write(
      ItemsCompanion(standardCost: Value(newAvgCost)),
    );
  }
}
