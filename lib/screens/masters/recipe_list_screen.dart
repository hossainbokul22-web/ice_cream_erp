import 'package:drift/drift.dart' hide Column;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/database_provider.dart';
import '../../database/app_database.dart';

class RecipeListScreen extends ConsumerWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.watch(databaseProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes / BOM'),
        actions: [
          IconButton(icon: const Icon(Icons.add), onPressed: () => _showRecipeForm(context, ref)),
        ],
      ),
      body: StreamBuilder(
        stream: db.select(db.recipes).watch(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          final recipes = snapshot.data!;
          if (recipes.isEmpty) {
            return const Center(child: Text('কোনো রেসিপি নেই। + চাপুন নতুন রেসিপি যোগ করতে।'));
          }
          return ListView.builder(
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              final r = recipes[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: ListTile(
                  title: Text('${r.recipeCode} - ${r.recipeName}'),
                  subtitle: Text('Base: ${r.baseQty} ${r.baseUnit}  •  Target Overrun: ${r.targetOverrun}%  •  Yield: ${r.expectedYield}%'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => _showRecipeDetails(context, ref, r),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showRecipeForm(context, ref),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showRecipeForm(BuildContext context, WidgetRef ref) {
    final codeCtrl = TextEditingController();
    final nameCtrl = TextEditingController();
    final baseQtyCtrl = TextEditingController(text: '1000');
    final overrunCtrl = TextEditingController(text: '100');
    final yieldCtrl = TextEditingController(text: '98');

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: MediaQuery.of(ctx).viewInsets.bottom + 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('নতুন রেসিপি', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              TextField(controller: codeCtrl, decoration: const InputDecoration(labelText: 'Recipe Code')),
              const SizedBox(height: 8),
              TextField(controller: nameCtrl, decoration: const InputDecoration(labelText: 'Recipe Name')),
              const SizedBox(height: 8),
              TextField(controller: baseQtyCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Base Qty (Liter)')),
              const SizedBox(height: 8),
              TextField(controller: overrunCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Target Overrun %')),
              const SizedBox(height: 8),
              TextField(controller: yieldCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Expected Yield %')),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () async {
                  final db = ref.read(databaseProvider);
                  // Note: finishedItemId needs a valid item. For now using 1 as placeholder.
                  // In full app we will select Finished Item.
                  await db.into(db.recipes).insert(RecipesCompanion.insert(
                    recipeCode: codeCtrl.text.trim(),
                    recipeName: nameCtrl.text.trim(),
                    finishedItemId: 1,
                    baseQty: double.tryParse(baseQtyCtrl.text) ?? 1000,
                    baseUnit: 'L',
                    targetOverrun: Value(double.tryParse(overrunCtrl.text) ?? 100),
                    expectedYield: Value(double.tryParse(yieldCtrl.text) ?? 98),
                  ));
                  if (ctx.mounted) Navigator.pop(ctx);
                },
                child: const Text('সেভ করুন'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showRecipeDetails(BuildContext context, WidgetRef ref, Recipe recipe) {
    final db = ref.read(databaseProvider);
    showModalBottomSheet(
      context: context,
      builder: (ctx) {
        return FutureBuilder(
          future: (db.select(db.recipeLines)..where((l) => l.recipeId.equals(recipe.id))).get(),
          builder: (context, snapshot) {
            final lines = snapshot.data ?? [];
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(recipe.recipeName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Overrun Target: ${recipe.targetOverrun}% | Yield: ${recipe.expectedYield}%'),
                  const Divider(),
                  const Text('Ingredients:', style: TextStyle(fontWeight: FontWeight.bold)),
                  ...lines.map((l) => Text('• Item ID ${l.itemId}: ${l.qty} ${l.unit} (Wastage ${l.wastagePercent}%)')),
                  if (lines.isEmpty) const Text('এখনো কোনো ইনগ্রিডিয়েন্ট যোগ করা হয়নি।'),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
