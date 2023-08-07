import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  List<String> budgets = ['Budget 1', 'Budget 2', 'Budget 3'];

  void showAddBudgetDialog() {
    Get.dialog(AlertDialog(
      title: Text('Add New Budget'),
      content: TextField(
        decoration: InputDecoration(labelText: 'Budget Name'),
        onChanged: (value) {},
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            budgets.add('New Budget');
            update();
            Get.back();
          },
          child: Text('Add'),
        ),
      ],
    ));
  }
}
