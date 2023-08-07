import 'package:get/get.dart';
import 'package:simple_budget/view/pages/budget/budget_detail_page.dart';
import 'package:simple_budget/view/pages/home/home_page.dart';

class Routes {
  static const homePage = '/home';
  static const budgetDetailPage = '/budget';
}

class MyRouter {
  static final List<GetPage> pages = [
    GetPage(
      name: Routes.homePage,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.budgetDetailPage,
      page: () => BudgetDetailPage(),
    ),
  ];
}
