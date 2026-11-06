import 'package:drift/drift.dart';

// ====================== MASTER TABLES ======================

class Items extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get itemCode => text().unique()();
  TextColumn get itemName => text()();
  TextColumn get itemType => text()(); // Raw, Packaging, Mix, Finished, Semi
  TextColumn get baseUnit => text()(); // L, Kg, Pcs, Cup, Cone
  BoolColumn get trackBatch => boolean().withDefault(const Constant(true))();
  BoolColumn get trackExpiry => boolean().withDefault(const Constant(true))();
  BoolColumn get isTankItem => boolean().withDefault(const Constant(false))();
  RealColumn get standardCost => real().withDefault(const Constant(0.0))();
  RealColumn get salesPrice => real().withDefault(const Constant(0.0))();
  RealColumn get minStock => real().withDefault(const Constant(0.0))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

class Units extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get unitCode => text().unique()();
  TextColumn get unitName => text()();
}

class UnitConversions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get itemId => integer().references(Items, #id)();
  TextColumn get fromUnit => text()();
  TextColumn get toUnit => text()();
  RealColumn get conversionFactor => real()();
}

class Warehouses extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get warehouseCode => text().unique()();
  TextColumn get warehouseName => text()();
  BoolColumn get isDefault => boolean().withDefault(const Constant(false))();
}

class Tanks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get tankCode => text().unique()();
  TextColumn get tankName => text()();
  TextColumn get tankType => text()(); // Mixing, Aging, Storage
  RealColumn get capacityLiter => real()();
  IntColumn get currentItemId => integer().nullable().references(Items, #id)();
  IntColumn get currentBatchId => integer().nullable()();
  RealColumn get currentQty => real().withDefault(const Constant(0.0))();
  TextColumn get status => text().withDefault(const Constant('Empty'))(); // Empty, InUse, Cleaning
  IntColumn get warehouseId => integer().nullable().references(Warehouses, #id)();
}

class Parties extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get partyCode => text().unique()();
  TextColumn get partyName => text()();
  TextColumn get partyType => text()(); // Supplier, Customer, Both
  TextColumn get phone => text().nullable()();
  TextColumn get address => text().nullable()();
  RealColumn get openingBalance => real().withDefault(const Constant(0.0))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
}

class Recipes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get recipeCode => text().unique()();
  TextColumn get recipeName => text()();
  IntColumn get finishedItemId => integer().references(Items, #id)();
  RealColumn get baseQty => real()(); // Recipe defined for this qty
  TextColumn get baseUnit => text()();
  RealColumn get targetOverrun => real().withDefault(const Constant(100.0))();
  RealColumn get expectedYield => real().withDefault(const Constant(98.0))();
  IntColumn get version => integer().withDefault(const Constant(1))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  TextColumn get notes => text().nullable()();
}

class RecipeLines extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get recipeId => integer().references(Recipes, #id)();
  IntColumn get itemId => integer().references(Items, #id)();
  RealColumn get qty => real()();
  TextColumn get unit => text()();
  RealColumn get wastagePercent => real().withDefault(const Constant(0.0))();
  IntColumn get sequence => integer().withDefault(const Constant(0))();
}

// ====================== BATCH & STOCK ======================

class Batches extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get batchNo => text()();
  IntColumn get itemId => integer().references(Items, #id)();
  IntColumn get warehouseId => integer().nullable().references(Warehouses, #id)();
  DateTimeColumn get mfgDate => dateTime().nullable()();
  DateTimeColumn get expiryDate => dateTime().nullable()();
  RealColumn get initialQty => real()();
  RealColumn get currentQty => real()();
  RealColumn get unitCost => real().withDefault(const Constant(0.0))();
  TextColumn get status => text().withDefault(const Constant('Available'))();
}

class StockLedger extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get voucherId => integer().nullable()();
  TextColumn get voucherType => text()(); // Purchase, ProductionIssue, ProductionReceipt, Sales, Adjustment, Transfer
  IntColumn get itemId => integer().references(Items, #id)();
  IntColumn get batchId => integer().nullable().references(Batches, #id)();
  IntColumn get warehouseId => integer().nullable().references(Warehouses, #id)();
  IntColumn get tankId => integer().nullable().references(Tanks, #id)();
  RealColumn get qtyIn => real().withDefault(const Constant(0.0))();
  RealColumn get qtyOut => real().withDefault(const Constant(0.0))();
  RealColumn get unitCost => real().nullable()();
  DateTimeColumn get transactionDate => dateTime()();
  TextColumn get narration => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

// ====================== PRODUCTION ======================

class ProductionOrders extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderNo => text().unique()();
  IntColumn get recipeId => integer().references(Recipes, #id)();
  RealColumn get targetQty => real()(); // Target Mix Qty in Liters
  TextColumn get targetUnit => text()();
  RealColumn get plannedOverrun => real().nullable()();
  TextColumn get status => text().withDefault(const Constant('Planned'))();
  // Planned, Mixing, Aging, Freezing, Completed, Cancelled
  IntColumn get mixingTankId => integer().nullable().references(Tanks, #id)();
  IntColumn get agingTankId => integer().nullable().references(Tanks, #id)();
  DateTimeColumn get startDate => dateTime().nullable()();
  DateTimeColumn get endDate => dateTime().nullable()();
  RealColumn get actualMixQty => real().nullable()();
  RealColumn get actualFinishedQty => real().nullable()();
  RealColumn get actualOverrun => real().nullable()();
  RealColumn get actualYield => real().nullable()();
  RealColumn get totalMaterialCost => real().withDefault(const Constant(0.0))();
  TextColumn get notes => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

class ProductionIssues extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get productionOrderId => integer().references(ProductionOrders, #id)();
  IntColumn get itemId => integer().references(Items, #id)();
  IntColumn get batchId => integer().nullable().references(Batches, #id)();
  RealColumn get qty => real()();
  TextColumn get unit => text().nullable()();
  RealColumn get unitCost => real().nullable()();
  IntColumn get tankId => integer().nullable().references(Tanks, #id)();
  DateTimeColumn get issuedAt => dateTime().withDefault(currentDateAndTime)();
}

class ProductionReceipts extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get productionOrderId => integer().references(ProductionOrders, #id)();
  IntColumn get itemId => integer().references(Items, #id)();
  TextColumn get batchNo => text()();
  RealColumn get qty => real()();
  TextColumn get unit => text().nullable()();
  RealColumn get overrunPercent => real().nullable()();
  RealColumn get unitCost => real().nullable()();
  DateTimeColumn get mfgDate => dateTime().nullable()();
  DateTimeColumn get expiryDate => dateTime().nullable()();
  IntColumn get warehouseId => integer().nullable().references(Warehouses, #id)();
  DateTimeColumn get receivedAt => dateTime().withDefault(currentDateAndTime)();
}

// ====================== ACCOUNTING ======================

class Vouchers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get voucherNo => text().unique()();
  TextColumn get voucherType => text()(); // Purchase, Sales, Payment, Receipt, Journal, Contra
  IntColumn get partyId => integer().nullable().references(Parties, #id)();
  DateTimeColumn get voucherDate => dateTime()();
  RealColumn get totalAmount => real()();
  TextColumn get narration => text().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
}

class VoucherLines extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get voucherId => integer().references(Vouchers, #id)();
  TextColumn get ledgerName => text()();
  RealColumn get debit => real().withDefault(const Constant(0.0))();
  RealColumn get credit => real().withDefault(const Constant(0.0))();
}
