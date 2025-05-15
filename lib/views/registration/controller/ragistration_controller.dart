import 'package:get/get.dart';
import 'package:ibanking/base/utils/basic_import.dart';
import 'package:image_picker/image_picker.dart';

class RegistrationController extends GetxController {
  RxString selectedDeliveryType = Strings.selectDeliveryType.obs;
  RxString allOverTheWorld = Strings.selectOverTheWorld.obs;
  RxString selectVehicle = Strings.selectVehicle.obs;
  RxString passport = Strings.passport.obs;
  RxString selectedDate = Strings.selectDate.obs;

  final List<Map<String, dynamic>> items = [];

  final Rx<XFile?> selectedIdentityImage = Rx<XFile?>(null);
  ImagePicker _picker = ImagePicker();

  Future<void> uploadImage(ImageSource sources) async {
    final image = await _picker.pickImage(source: sources);
    if (image != null) {
      selectedIdentityImage.value = image;
      Get.back();
    } else {
      Get.back();
      return CustomSnackBar.error('You have been not pick image');
    }
  }

  final Rx<XFile?> selectedLicenseImg = Rx<XFile?>(null);

  Future<void> uploadLicenseImg(ImageSource sources) async {
    final licenseImg = await _picker.pickImage(source: sources);
    if (licenseImg != null) {
      selectedLicenseImg.value = licenseImg;
      Get.back();
    } else {
      Get.back();

      return CustomSnackBar.error('You have been not pick image');
    }
  }
}
