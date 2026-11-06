import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/database_provider.dart';
import '../../database/app_database.dart';

class ItemListScreen extends ConsumerWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.watch(databaseProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Master'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showItemForm(context, ref),
          ),
        ],
      ),
      body: StreamBuilder(
        stream: db.select(db.items).watch(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final items = snapshot.data!;
          if (items.isEmpty) {
            return const Center(child: Text('কোনো আইটেম নেই। + চাপুন নতুন যোগ করতে।'));
          }
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                  title: Text('${item.itemCode} - ${item.itemName}'),
                  subtitle: Text('${item.itemType}  •  Unit: ${item.baseUnit}  •  Cost: ${item.standardCost.toStringAsFixed(2)}'),
                  trailing: Chip(
                    label: Text(item.itemType, style: const TextStyle(fontSize: 11)),
                    visualDensity: VisualDensity.compact,
                  ),
                  onTap: () => _showItemForm(context, ref, item: item),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showItemForm(context, ref),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showItemForm(BuildContext context, WidgetRef ref, {Item? item}) {
    final codeCtrl = TextEditingController(text: item?.itemCode ?? '');
    final nameCtrl = TextEditingController(text: item?.itemName ?? '');
    final costCtrl = TextEditingController(text: item?.standardCost.toString() ?? '0');
    String itemType = item?.itemType ?? 'Raw';
    String baseUnit = item?.baseUnit ?? 'L';

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(
            left: 16, right: 16, top: 16,
            bottom: MediaQuery.of(ctx).viewInsets.bottom + 16,
          ),
          child: StatefulBuilder(
            builder: (context, setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(item == null ? 'নতুন আইটেম' : 'আইটেম এডিট', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  TextField(controller: codeCtrl, decoration: const InputDecoration(labelText: 'Item Code')),
                  const SizedBox(height: 8),
                  TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: 'Item Name')),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: itemType,
                    decoration: const InputDecoration(labelText: 'Type'),
                    items: ['Raw', 'Packaging', 'Mix', 'Finished', 'Semi']
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (v) => setState(() => itemType = v!),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: baseUnit,
                    decoration: const InputDecoration(labelText: 'Base Unit'),
                    items: ['L', 'Kg', 'Pcs', 'Cup', 'Cone', 'Tin']
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (v) => setState(() => baseUnit = v!),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: costCtrl,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Standard Cost'),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: () async {
                      final db = ref.read(databaseProvider);
                      if (item == null) {
                        await db.into(db.items).insert(ItemsCompanion.insert(
                          itemCode: codeCtrl.text.trim(),
                          itemName: nameCtrl.text.trim(),
                          itemType: itemType,
                          baseUnit: baseUnit,
                          standardCost: Value(double.tryParse(costCtrl.text) ?? 0),
                        ));
                      } else {
                        await (db.update(db.items)..where((t) => t.id.equals(item.id))).write(
                          ItemsCompanion(
                            itemCode: Value(codeCtrl.text.trim()),
                            itemName: Value(nameCtrl.text.trim()),
                            itemType: Value(itemType),
                            baseUnit: Value(baseUnit),
                            standardCost: Value(double.tryParse(costCtrl.text) ?? 0),
                          ),
                        );
                      }
                      if (ctx.mounted) Navigator.pop(ctx);
                    },
                    child: const Text('সেভ করুন'),
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
