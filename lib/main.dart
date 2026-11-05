import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'screens/dashboard/home_screen.dart';
import 'screens/production/production_order_list_screen.dart';
import 'screens/masters/item_list_screen.dart';
import 'screens/masters/recipe_list_screen.dart';
import 'screens/masters/tank_list_screen.dart';
import 'screens/inventory/stock_summary_screen.dart';
import 'screens/accounts/voucher_list_screen.dart';
import 'screens/reports/profit_loss_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: IceCreamERPApp()));
}

class IceCreamERPApp extends ConsumerWidget {
  const IceCreamERPApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Ice Cream ERP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0D47A1),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          elevation: 0,
        ),
        cardTheme: CardTheme(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          isDense: true,
        ),
      ),
      routerConfig: _router,
    );
  }
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/production', builder: (context, state) => const ProductionOrderListScreen()),
    GoRoute(path: '/items', builder: (context, state) => const ItemListScreen()),
    GoRoute(path: '/recipes', builder: (context, state) => const RecipeListScreen()),
    GoRoute(path: '/tanks', builder: (context, state) => const TankListScreen()),
    GoRoute(path: '/stock', builder: (context, state) => const StockSummaryScreen()),
    GoRoute(path: '/vouchers', builder: (context, state) => const VoucherListScreen()),
    GoRoute(path: '/profit-loss', builder: (context, state) => const ProfitLossScreen()),
  ],
);
