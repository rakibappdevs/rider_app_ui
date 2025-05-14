import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  var phoneNumber = ''.obs;
  var password = ''.obs;
  RxBool isChecked = false.obs;


  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool validateForm() {
    return formKey.currentState?.validate() ?? false;
  }

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
