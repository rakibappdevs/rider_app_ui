import 'package:get/get.dart';
import '../views/my_order/controller/my_order_controller.dart';

class MyOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyOrderController());
  }
}
