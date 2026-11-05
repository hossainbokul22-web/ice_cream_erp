import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../database/app_database.dart';
import '../services/production_service.dart';
import '../services/costing_service.dart';
import '../services/stock_service.dart';

final databaseProvider = Provider<AppDatabase>((ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
});

final productionServiceProvider = Provider<ProductionService>((ref) {
  return ProductionService(ref.watch(databaseProvider));
});

final costingServiceProvider = Provider<CostingService>((ref) {
  return CostingService(ref.watch(databaseProvider));
});

final stockServiceProvider = Provider<StockService>((ref) {
  return StockService(ref.watch(databaseProvider));
});
