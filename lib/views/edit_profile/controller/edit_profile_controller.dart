import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ibanking/base/utils/basic_import.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    phoneNumberController.text = '+880170000000';
  }

  final Rx<XFile?> selectedUserImage = Rx<XFile?>(null);

  ImagePicker _picker = ImagePicker();

  Future<void> updateImage(imageSource) async {
    final img = await _picker.pickImage(source: imageSource);
    if (img != null) {
      selectedUserImage.value = img;
      Get.back();
    } else {
      Get.back();
      return CustomSnackBar.error("you Have been not selected image");
    }
  }
}
