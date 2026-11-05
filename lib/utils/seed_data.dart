import 'package:drift/drift.dart';
import '../database/app_database.dart';

/// Call this once after first install to insert demo data
Future<void> seedInitialData(AppDatabase db) async {
  final itemCount = await db.select(db.items).get();
  if (itemCount.isNotEmpty) return; // already seeded

  // Units
  await db.into(db.units).insert(UnitsCompanion.insert(unitCode: 'L', unitName: 'Liter'));
  await db.into(db.units).insert(UnitsCompanion.insert(unitCode: 'Kg', unitName: 'Kilogram'));
  await db.into(db.units).insert(UnitsCompanion.insert(unitCode: 'Cup', unitName: 'Cup'));
  await db.into(db.units).insert(UnitsCompanion.insert(unitCode: 'Cone', unitName: 'Cone'));

  // Warehouse
  await db.into(db.warehouses).insert(WarehousesCompanion.insert(
    warehouseCode: 'MAIN',
    warehouseName: 'Main Store',
    isDefault: const Value(true),
  ));

  // Items
  final milkId = await db.into(db.items).insert(ItemsCompanion.insert(
    itemCode: 'RM-MILK',
    itemName: 'Fresh Milk',
    itemType: 'Raw',
    baseUnit: 'L',
    standardCost: const Value(60),
  ));
  final creamId = await db.into(db.items).insert(ItemsCompanion.insert(
    itemCode: 'RM-CREAM',
    itemName: 'Fresh Cream',
    itemType: 'Raw',
    baseUnit: 'L',
    standardCost: const Value(280),
  ));
  final sugarId = await db.into(db.items).insert(ItemsCompanion.insert(
    itemCode: 'RM-SUGAR',
    itemName: 'Sugar',
    itemType: 'Raw',
    baseUnit: 'Kg',
    standardCost: const Value(90),
  ));
  final powderId = await db.into(db.items).insert(ItemsCompanion.insert(
    itemCode: 'RM-MP',
    itemName: 'Milk Powder',
    itemType: 'Raw',
    baseUnit: 'Kg',
    standardCost: const Value(450),
  ));
  final cupId = await db.into(db.items).insert(ItemsCompanion.insert(
    itemCode: 'PK-CUP',
    itemName: '100ml Cup',
    itemType: 'Packaging',
    baseUnit: 'Pcs',
    standardCost: const Value(2.5),
  ));
  final vanillaId = await db.into(db.items).insert(ItemsCompanion.insert(
    itemCode: 'FG-VANILLA',
    itemName: 'Vanilla Ice Cream',
    itemType: 'Finished',
    baseUnit: 'L',
    standardCost: const Value(0),
    salesPrice: const Value(180),
  ));

  // Tanks
  await db.into(db.tanks).insert(TanksCompanion.insert(
    tankCode: 'MIX-01',
    tankName: 'Mixing Tank 1',
    tankType: 'Mixing',
    capacityLiter: 1500,
  ));
  await db.into(db.tanks).insert(TanksCompanion.insert(
    tankCode: 'AGE-01',
    tankName: 'Aging Tank 1',
    tankType: 'Aging',
    capacityLiter: 2000,
  ));
  await db.into(db.tanks).insert(TanksCompanion.insert(
    tankCode: 'AGE-02',
    tankName: 'Aging Tank 2',
    tankType: 'Aging',
    capacityLiter: 2000,
  ));

  // Sample Recipe - Vanilla
  final recipeId = await db.into(db.recipes).insert(RecipesCompanion.insert(
    recipeCode: 'RCP-VANILLA',
    recipeName: 'Vanilla Premium',
    finishedItemId: vanillaId,
    baseQty: 1000,
    baseUnit: 'L',
    targetOverrun: const Value(90),
    expectedYield: const Value(97),
  ));

  // Recipe Lines (for 1000L mix)
  await db.into(db.recipeLines).insert(RecipeLinesCompanion.insert(
    recipeId: recipeId,
    itemId: milkId,
    qty: 650,
    unit: 'L',
    wastagePercent: const Value(1),
  ));
  await db.into(db.recipeLines).insert(RecipeLinesCompanion.insert(
    recipeId: recipeId,
    itemId: creamId,
    qty: 180,
    unit: 'L',
    wastagePercent: const Value(0.5),
  ));
  await db.into(db.recipeLines).insert(RecipeLinesCompanion.insert(
    recipeId: recipeId,
    itemId: sugarId,
    qty: 140,
    unit: 'Kg',
    wastagePercent: const Value(0),
  ));
  await db.into(db.recipeLines).insert(RecipeLinesCompanion.insert(
    recipeId: recipeId,
    itemId: powderId,
    qty: 45,
    unit: 'Kg',
    wastagePercent: const Value(0),
  ));
}
