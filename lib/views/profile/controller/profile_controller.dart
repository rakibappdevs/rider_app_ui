import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxBool isDarkMode = false.obs;
  RxBool backgroundNotificationEnabled = false.obs;
  RxBool systemNotificationEnabled = true.obs;

  final  selectedLanguageIndex = ''.obs;

  List<Map<String, String>> languageList = [
    {"name": "English", "flag": "🇬🇧"},
    {"name": "Arabic", "flag": "🇸🇦"},
    {"name": "Spanish", "flag": "🇪🇸"},
    {"name": "Bengali", "flag": "🇧🇩"},
  ];
}
