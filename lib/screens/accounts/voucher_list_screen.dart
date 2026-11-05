import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/database_provider.dart';

class VoucherListScreen extends ConsumerWidget {
  const VoucherListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.watch(databaseProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Vouchers (Tally Style)')),
      body: StreamBuilder(
        stream: db.select(db.vouchers).watch(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final vouchers = snapshot.data!;
          if (vouchers.isEmpty) {
            return const Center(child: Text('কোনো ভাউচার নেই। নিচের বাটন দিয়ে নতুন ভাউচার যোগ করুন।'));
          }
          return ListView.builder(
            itemCount: vouchers.length,
            itemBuilder: (context, index) {
              final v = vouchers[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                  title: Text('${v.voucherType} - ${v.voucherNo}'),
                  subtitle: Text(v.narration ?? ''),
                  trailing: Text('${v.totalAmount.toStringAsFixed(2)} Tk', style: const TextStyle(fontWeight: FontWeight.bold)),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showQuickVoucher(context, ref),
        icon: const Icon(Icons.add),
        label: const Text('New Voucher'),
      ),
    );
  }

  void _showQuickVoucher(BuildContext context, WidgetRef ref) {
    final amountCtrl = TextEditingController();
    final narrationCtrl = TextEditingController();
    String type = 'Purchase';

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: MediaQuery.of(ctx).viewInsets.bottom + 16),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Quick Voucher', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  DropdownButtonFormField<String>(
                    value: type,
                    decoration: const InputDecoration(labelText: 'Voucher Type'),
                    items: ['Purchase', 'Sales', 'Payment', 'Receipt', 'Journal']
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (v) => setState(() => type = v!),
                  ),
                  const SizedBox(height: 8),
                  TextField(controller: amountCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Amount')),
                  const SizedBox(height: 8),
                  TextField(controller: narrationCtrl, decoration: const InputDecoration(labelText: 'Narration')),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: () async {
                      final db = ref.read(databaseProvider);
                      final amount = double.tryParse(amountCtrl.text) ?? 0;
                      final voucherId = await db.into(db.vouchers).insert(VouchersCompanion.insert(
                        voucherNo: 'V-${DateTime.now().millisecondsSinceEpoch}',
                        voucherType: type,
                        voucherDate: DateTime.now(),
                        totalAmount: amount,
                        narration: Value(narrationCtrl.text),
                      ));

                      // Simple double entry
                      if (type == 'Purchase') {
                        await db.into(db.voucherLines).insert(VoucherLinesCompanion.insert(voucherId: voucherId, ledgerName: 'Purchase A/c', debit: Value(amount)));
                        await db.into(db.voucherLines).insert(VoucherLinesCompanion.insert(voucherId: voucherId, ledgerName: 'Cash/Bank', credit: Value(amount)));
                      } else if (type == 'Sales') {
                        await db.into(db.voucherLines).insert(VoucherLinesCompanion.insert(voucherId: voucherId, ledgerName: 'Cash/Bank', debit: Value(amount)));
                        await db.into(db.voucherLines).insert(VoucherLinesCompanion.insert(voucherId: voucherId, ledgerName: 'Sales A/c', credit: Value(amount)));
                      }

                      if (ctx.mounted) Navigator.pop(ctx);
                    },
                    child: const Text('Save Voucher'),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
