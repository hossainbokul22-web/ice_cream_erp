import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/database_provider.dart';
import '../../services/production_service.dart';
import '../../services/costing_service.dart';

class ProductionOrderDetailScreen extends ConsumerStatefulWidget {
  final int orderId;
  const ProductionOrderDetailScreen({super.key, required this.orderId});

  @override
  ConsumerState<ProductionOrderDetailScreen> createState() => _ProductionOrderDetailScreenState();
}

class _ProductionOrderDetailScreenState extends ConsumerState<ProductionOrderDetailScreen> {
  Map<String, dynamic>? details;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final service = ref.read(productionServiceProvider);
    final data = await service.getOrderDetails(widget.orderId);
    setState(() => details = data);
  }

  @override
  Widget build(BuildContext context) {
    if (details == null) return const Scaffold(body: Center(child: CircularProgressIndicator()));

    final order = details!['order'];
    final recipe = details!['recipe'];

    return Scaffold(
      appBar: AppBar(title: Text(order.orderNo)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _infoCard('Status', order.status),
          _infoCard('Recipe', recipe.recipeName),
          _infoCard('Target Mix', '${order.targetQty} L'),
          if (order.actualMixQty != null) _infoCard('Actual Mix', '${order.actualMixQty} L'),
          if (order.actualFinishedQty != null) _infoCard('Finished Qty', '${order.actualFinishedQty} L'),
          if (order.actualOverrun != null) _infoCard('Actual Overrun', '${order.actualOverrun.toStringAsFixed(1)} %'),
          if (order.actualYield != null) _infoCard('Yield', '${order.actualYield.toStringAsFixed(1)} %'),
          if (details!['costPerLiterFinished'] != null)
            _infoCard('Cost per Liter', '${(details!['costPerLiterFinished'] as double).toStringAsFixed(2)} Tk'),

          const SizedBox(height: 20),
          const Text('Actions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),

          if (order.status == 'Planned') ...[
            FilledButton(
              onPressed: () => _showIssueDialog(),
              child: const Text('1. Material Issue করুন'),
            ),
          ],
          if (order.status == 'Mixing') ...[
            FilledButton(
              onPressed: () => _completeMixing(),
              child: const Text('2. Mixing সম্পন্ন + Actual Mix Qty'),
            ),
          ],
          if (order.status == 'Aging') ...[
            FilledButton(
              onPressed: () => _completeProduction(),
              child: const Text('3. Freezing সম্পন্ন + Finished Qty এন্ট্রি'),
            ),
          ],
          if (order.status == 'Completed')
            const Card(
              color: Colors.green,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Text('প্রোডাকশন সম্পন্ন হয়েছে', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
        ],
      ),
    );
  }

  Widget _infoCard(String label, String value) {
    return Card(
      child: ListTile(
        dense: true,
        title: Text(label, style: const TextStyle(fontSize: 13, color: Colors.grey)),
        trailing: Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }

  void _showIssueDialog() async {
    final service = ref.read(productionServiceProvider);
    final materials = await service.getRequiredMaterials(widget.orderId);

    // Simplified: auto-issue with dummy cost for demo. Full version will select batches.
    final issues = materials.map((m) {
      return {
        'itemId': m['itemId'],
        'batchId': null,
        'qty': m['requiredQty'],
        'unitCost': 50.0, // placeholder
      };
    }).toList();

    await service.issueMaterials(productionOrderId: widget.orderId, issues: issues);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Material Issued')));
    _load();
  }

  void _completeMixing() {
    final qtyCtrl = TextEditingController(text: details!['order'].targetQty.toString());
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Actual Mix Quantity'),
        content: TextField(controller: qtyCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Actual Mix Qty (L)')),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          FilledButton(
            onPressed: () async {
              final service = ref.read(productionServiceProvider);
              final order = details!['order'];
              await service.completeMixing(
                productionOrderId: widget.orderId,
                actualMixQty: double.tryParse(qtyCtrl.text) ?? order.targetQty,
                mixingTankId: order.mixingTankId ?? 1,
              );
              // Move to aging automatically for simplicity
              if (order.agingTankId != null) {
                await service.moveToAging(productionOrderId: widget.orderId, agingTankId: order.agingTankId);
              }
              Navigator.pop(ctx);
              _load();
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _completeProduction() {
    final finishedCtrl = TextEditingController();
    final batchCtrl = TextEditingController(text: 'FG-${DateTime.now().millisecondsSinceEpoch.toString().substring(8)}');

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Finished Goods Receipt'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(controller: finishedCtrl, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Actual Finished Qty (Liter)')),
            const SizedBox(height: 8),
            TextField(controller: batchCtrl, decoration: const InputDecoration(labelText: 'Finished Batch No')),
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx), child: const Text('Cancel')),
          FilledButton(
            onPressed: () async {
              final service = ref.read(productionServiceProvider);
              final order = details!['order'];
              final recipe = details!['recipe'];
              await service.completeProduction(
                productionOrderId: widget.orderId,
                actualFinishedQty: double.tryParse(finishedCtrl.text) ?? 0,
                finishedBatchNo: batchCtrl.text.trim(),
                finishedItemId: recipe.finishedItemId,
                warehouseId: 1,
              );
              Navigator.pop(ctx);
              _load();
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Production Completed + Cost Calculated')));
            },
            child: const Text('Complete'),
          ),
        ],
      ),
    );
  }
}
