import 'package:get/get.dart';
import '../views/my_account/controller/my_account_controller.dart';

class MyAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAccountController());
  }
}
