import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/database_provider.dart';
import '../../services/production_service.dart';

class CreateProductionOrderScreen extends ConsumerStatefulWidget {
  const CreateProductionOrderScreen({super.key});

  @override
  ConsumerState<CreateProductionOrderScreen> createState() => _CreateProductionOrderScreenState();
}

class _CreateProductionOrderScreenState extends ConsumerState<CreateProductionOrderScreen> {
  final orderNoCtrl = TextEditingController(text: 'PO-${DateTime.now().millisecondsSinceEpoch.toString().substring(7)}');
  final targetQtyCtrl = TextEditingController(text: '1000');
  int? selectedRecipeId;
  int? selectedMixingTankId;
  int? selectedAgingTankId;

  @override
  Widget build(BuildContext context) {
    final db = ref.watch(databaseProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('নতুন Production Order')),
      body: FutureBuilder(
        future: Future.wait([
          db.select(db.recipes).get(),
          db.select(db.tanks).get(),
        ]),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final recipes = snapshot.data![0] as List;
          final tanks = snapshot.data![1] as List;
          final mixingTanks = tanks.where((t) => t.tankType == 'Mixing').toList();
          final agingTanks = tanks.where((t) => t.tankType == 'Aging').toList();

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              TextField(
                controller: orderNoCtrl,
                decoration: const InputDecoration(labelText: 'Order No'),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<int>(
                value: selectedRecipeId,
                decoration: const InputDecoration(labelText: 'Recipe সিলেক্ট করুন'),
                items: recipes.map((r) => DropdownMenuItem<int>(value: r.id, child: Text('${r.recipeCode} - ${r.recipeName}'))).toList(),
                onChanged: (v) => setState(() => selectedRecipeId = v),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: targetQtyCtrl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Target Mix Quantity (Liter)'),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<int>(
                value: selectedMixingTankId,
                decoration: const InputDecoration(labelText: 'Mixing Tank'),
                items: mixingTanks.map((t) => DropdownMenuItem<int>(value: t.id, child: Text('${t.tankCode} (${t.capacityLiter}L)'))).toList(),
                onChanged: (v) => setState(() => selectedMixingTankId = v),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<int>(
                value: selectedAgingTankId,
                decoration: const InputDecoration(labelText: 'Aging Tank'),
                items: agingTanks.map((t) => DropdownMenuItem<int>(value: t.id, child: Text('${t.tankCode} (${t.capacityLiter}L)'))).toList(),
                onChanged: (v) => setState(() => selectedAgingTankId = v),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: selectedRecipeId == null ? null : () async {
                  final service = ref.read(productionServiceProvider);
                  await service.createProductionOrder(
                    orderNo: orderNoCtrl.text.trim(),
                    recipeId: selectedRecipeId!,
                    targetMixQty: double.tryParse(targetQtyCtrl.text) ?? 1000,
                    targetUnit: 'L',
                    mixingTankId: selectedMixingTankId,
                    agingTankId: selectedAgingTankId,
                  );
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Production Order তৈরি হয়েছে')));
                    Navigator.pop(context);
                  }
                },
                child: const Text('Production Order তৈরি করুন'),
              ),
            ],
          );
        },
      ),
    );
  }
}
