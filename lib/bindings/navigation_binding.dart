import 'package:get/get.dart';
import 'package:ibanking/views/cart/controller/cart_controller.dart';
import 'package:ibanking/views/dashboard/controller/dashboard_controller.dart';
import 'package:ibanking/views/navigation/controller/navigation_controller.dart';

import '../views/category/controller/category_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());
    Get.put(DashboardController());
    Get.put(CategoryController());
    Get.put(CartController());
  }
}
