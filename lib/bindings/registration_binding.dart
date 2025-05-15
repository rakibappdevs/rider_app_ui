import 'package:get/get.dart';
import '../views/registration/controller/ragistration_controller.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationController());
  }
}
