import 'package:country_picker/country_picker.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  // Observable variables
  RxString selectedCountryFlag = ''.obs;
  RxString selectedCountryCode = ''.obs;

  @override
  void onInit() {
    super.onInit();
    final defaultCountry = Country.parse('BD');
    selectedCountryFlag.value = defaultCountry.flagEmoji;
    selectedCountryCode.value = defaultCountry.phoneCode;
  }

}
