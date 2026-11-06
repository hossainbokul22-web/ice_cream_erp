import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'tables.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [
  Items,
  Units,
  UnitConversions,
  Warehouses,
  Tanks,
  Parties,
  Recipes,
  RecipeLines,
  Batches,
  StockLedger,
  ProductionOrders,
  ProductionIssues,
  ProductionReceipts,
  Vouchers,
  VoucherLines,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // ====================== HELPER QUERIES ======================

  // Current stock of an item (all batches)
  Future<double> getItemStock(int itemId, {int? warehouseId}) async {
    final query = selectOnly(stockLedger)
      ..addColumns([
        stockLedger.qtyIn.sum(),
        stockLedger.qtyOut.sum(),
      ])
      ..where(stockLedger.itemId.equals(itemId));

    if (warehouseId != null) {
      query.where(stockLedger.warehouseId.equals(warehouseId));
    }

    final row = await query.getSingle();
    final qtyIn = row.read(stockLedger.qtyIn.sum()) ?? 0.0;
    final qtyOut = row.read(stockLedger.qtyOut.sum()) ?? 0.0;
    return qtyIn - qtyOut;
  }

  // Available batches for an item (FEFO - First Expiry First Out)
  Future<List<Batche>> getAvailableBatches(int itemId) {
    return (select(batches)
          ..where((b) => b.itemId.equals(itemId) & b.currentQty.isBiggerThanValue(0))
          ..orderBy([
            (b) => OrderingTerm(expression: b.expiryDate, mode: OrderingMode.asc)
          ]))
        .get();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'ice_cream_erp.sqlite'));
    return NativeDatabase(file);
  });
}
