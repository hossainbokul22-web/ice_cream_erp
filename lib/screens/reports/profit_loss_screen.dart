import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/database_provider.dart';

class ProfitLossScreen extends ConsumerWidget {
  const ProfitLossScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.watch(databaseProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Profit & Loss')),
      body: FutureBuilder(
        future: _calculatePL(db),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final data = snapshot.data!;
          final sales = data['sales'] as double;
          final purchase = data['purchase'] as double;
          final grossProfit = sales - purchase;

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const Text('Profit & Loss Statement', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text('Period: All time (Demo)', style: TextStyle(color: Colors.grey.shade600)),
              const Divider(height: 24),
              _plRow('Sales / Income', sales, isCredit: true),
              _plRow('Purchase / Cost of Materials', purchase, isCredit: false),
              const Divider(),
              _plRow('Gross Profit', grossProfit, isBold: true, isCredit: grossProfit >= 0),
              const SizedBox(height: 20),
              const Text('Note: এটি বেসিক P&L। পরবর্তী ভার্সনে Production Cost, Overhead, Expense লেজার যোগ করে পূর্ণাঙ্গ P&L করা হবে।',
                  style: TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          );
        },
      ),
    );
  }

  Widget _plRow(String label, double amount, {bool isCredit = false, bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
          Text(
            '${amount.toStringAsFixed(2)} Tk',
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
              color: isCredit ? Colors.green.shade700 : Colors.red.shade700,
            ),
          ),
        ],
      ),
    );
  }

  Future<Map<String, double>> _calculatePL(dynamic db) async {
    final vouchers = await db.select(db.vouchers).get();
    double sales = 0;
    double purchase = 0;

    for (final v in vouchers) {
      if (v.voucherType == 'Sales') sales += v.totalAmount;
      if (v.voucherType == 'Purchase') purchase += v.totalAmount;
    }
    return {'sales': sales, 'purchase': purchase};
  }
}
