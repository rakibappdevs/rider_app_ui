import 'package:get/get.dart';
import '../views/pc_builder/controller/pc_builder_controller.dart';

class PcBuilderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PcBuilderController());
  }
}
