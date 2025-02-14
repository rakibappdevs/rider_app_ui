import 'package:get/get.dart';

import '../../../base/utils/local_storage.dart';
import '../../../routes/routes.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();

    LocalStorage.isLoggedIn
        ? Get.offAndToNamed(Routes.navigation)
        : LocalStorage.onboardSave
            ? Get.offAndToNamed(Routes.navigation)
            : Get.offAndToNamed(Routes.onboardScreen);
  }
}
