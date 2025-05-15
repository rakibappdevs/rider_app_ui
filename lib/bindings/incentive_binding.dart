import 'package:get/get.dart';
import '../views/incentive/controller/incentive_controller.dart';

class IncentiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IncentiveController());
  }
}
