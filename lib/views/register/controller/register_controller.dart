import 'dart:ffi';
import 'dart:io';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ibanking/base/utils/basic_import.dart';
import 'package:image_picker/image_picker.dart';

class RegisterController extends GetxController {

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  RxString selectedCountryFlag = ''.obs;
  RxString selectedCountryCode = ''.obs;

  @override
  void onInit() {
    super.onInit();
    final defaultCountry = Country.parse('BD');
    selectedCountryFlag.value = defaultCountry.flagEmoji;
    selectedCountryCode.value = defaultCountry.phoneCode;
  }

  Rx<XFile?> userSelectedImage = Rx<XFile?>(null);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();


  final ImagePicker _picker = ImagePicker();

  Future<void> selectYourImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      userSelectedImage.value = image;
    } else {
      return CustomSnackBar.error('You have been not selected Image');
    }
    // update();
  }
}
