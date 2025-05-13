import 'package:get/get.dart';
import '../views/order_request/controller/order_request_controller.dart';

class OrderRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderRequestController());
  }
}
