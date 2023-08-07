import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_budget/view/pages/home/home_page.dart';
import 'package:simple_budget/view/pages/unknown/unknown_page.dart';
import 'package:simple_budget/view/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Budget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: HomePage(),
      unknownRoute: GetPage(name: '/notfound', page: () => UnknownRoutePage()),
      getPages: MyRouter.pages,
    );
  }
}
