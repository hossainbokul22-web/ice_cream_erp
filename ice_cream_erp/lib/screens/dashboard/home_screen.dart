import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ice Cream ERP'),
        actions: [
          IconButton(icon: const Icon(Icons.backup), onPressed: () {}),
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          // Quick Stats
          Row(
            children: [
              _statCard(context, 'Today Production', '0 L', Colors.blue),
              const SizedBox(width: 8),
              _statCard(context, 'Active Orders', '0', Colors.orange),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _statCard(context, 'Low Stock Items', '0', Colors.red),
              const SizedBox(width: 8),
              _statCard(context, 'Tank In Use', '0', Colors.green),
            ],
          ),
          const SizedBox(height: 20),

          const Text('Main Modules', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),

          _moduleTile(context, Icons.precision_manufacturing, 'Production', 'Batch, Tank, Overrun, Yield', '/production', Colors.deepPurple),
          _moduleTile(context, Icons.inventory_2, 'Inventory & Stock', 'Raw, Packaging, Finished, Batch', '/stock', Colors.teal),
          _moduleTile(context, Icons.science, 'Recipes / BOM', 'Mix formulas, Overrun target', '/recipes', Colors.indigo),
          _moduleTile(context, Icons.water_drop, 'Tanks', 'Mixing & Aging tank status', '/tanks', Colors.cyan),
          _moduleTile(context, Icons.category, 'Item Master', 'Raw, Packaging, Finished Goods', '/items', Colors.brown),
          _moduleTile(context, Icons.receipt_long, 'Vouchers', 'Purchase, Sales, Payment, Journal', '/vouchers', Colors.blueGrey),
          _moduleTile(context, Icons.assessment, 'Profit & Loss', 'P&L Statement', '/profit-loss', Colors.green),
        ],
      ),
    );
  }

  Widget _statCard(BuildContext context, String title, String value, Color color) {
    return Expanded(
      child: Card(
        color: color.withOpacity(0.08),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontSize: 12, color: color.withOpacity(0.8))),
              const SizedBox(height: 4),
              Text(value, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _moduleTile(BuildContext context, IconData icon, String title, String subtitle, String route, Color color) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.15),
          child: Icon(icon, color: color),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => context.push(route),
      ),
    );
  }
}
