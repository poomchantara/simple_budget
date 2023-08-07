import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_budget/view/pages/budget/budget_controller.dart';

class BudgetDetailPage extends StatelessWidget {
  final controller = Get.put(BudgetController());

  BudgetDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Budget: ${controller.name}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Budget Size: \$${controller.amount.toStringAsFixed(2)}'),
            SizedBox(height: 10),
            Text(
                'Current Spending: \$0.00'), // You can replace this with actual data
            SizedBox(height: 20),
            Text(
              'Recent Transactions:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Number of recent transactions
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Transaction #$index'),
                    subtitle: Text('Amount: \$10.00'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
