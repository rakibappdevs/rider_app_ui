import 'package:get/get.dart';
import '../views/ragistration/controller/ragistration_controller.dart';

class RagistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RagistrationController());
  }
}
