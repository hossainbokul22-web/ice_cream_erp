import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/database_provider.dart';
import '../../services/stock_service.dart';

class StockSummaryScreen extends ConsumerWidget {
  const StockSummaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stockService = ref.watch(stockServiceProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Stock Summary')),
      body: FutureBuilder(
        future: stockService.getStockSummary(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final summary = snapshot.data!;
          if (summary.isEmpty) {
            return const Center(child: Text('স্টক ডাটা নেই। আগে আইটেম ও পারচেজ এন্ট্রি করুন।'));
          }
          return ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: summary.length,
            itemBuilder: (context, index) {
              final row = summary[index];
              final item = row['item'];
              final stock = row['currentStock'] as double;
              final isLow = row['isLowStock'] as bool;
              final batches = row['batches'] as List;

              return Card(
                color: isLow ? Colors.red.shade50 : null,
                child: ExpansionTile(
                  title: Text('${item.itemCode} - ${item.itemName}'),
                  subtitle: Text('Stock: ${stock.toStringAsFixed(2)} ${item.baseUnit}'),
                  trailing: isLow
                      ? const Icon(Icons.warning, color: Colors.red)
                      : Text('${batches.length} Batch', style: const TextStyle(fontSize: 12)),
                  children: batches.isEmpty
                      ? [const ListTile(title: Text('কোনো ব্যাচ নেই'))]
                      : batches.map((b) {
                          return ListTile(
                            dense: true,
                            title: Text('Batch: ${b.batchNo}'),
                            subtitle: Text('Qty: ${b.currentQty}  •  Exp: ${b.expiryDate?.toString().substring(0, 10) ?? 'N/A'}'),
                            trailing: Text('Cost: ${b.unitCost.toStringAsFixed(2)}'),
                          );
                        }).toList(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
