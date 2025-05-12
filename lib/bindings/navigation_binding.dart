import 'package:get/get.dart';
import 'package:ibanking/views/cart/controller/cart_controller.dart';
import 'package:ibanking/views/dashboard/controller/dashboard_controller.dart';
import 'package:ibanking/views/navigation/controller/navigation_controller.dart';
import 'package:ibanking/views/order_request/controller/order_request_controller.dart';
import '../views/my_order/controller/my_order_controller.dart';

class NavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());
    Get.put(DashboardController());
    Get.put(OrderRequestController());
    Get.put(MyOrderController());
    Get.put(CartController());
  }
}
