import 'package:get/get.dart';

import '../../../base/utils/local_storage.dart';
import '../../../routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Get.offAndToNamed(Routes.loginScreen);
  }
}
