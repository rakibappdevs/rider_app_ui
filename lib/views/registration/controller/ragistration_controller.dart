import 'package:get/get.dart';
import 'package:ibanking/base/utils/basic_import.dart';
import 'package:image_picker/image_picker.dart';

class RegistrationController extends GetxController {
  RxString selectedDeliveryType = Strings.selectDeliveryType.obs;
  RxString allOverTheWorld = Strings.selectOverTheWorld.obs;
  RxString selectVehicle = Strings.selectVehicle.obs;
  RxString passport = Strings.passport.obs;
  RxString selectedDate = Strings.selectDate.obs;

  final List<Map<String, dynamic>> items = [
    // {'id': 1, 'name': 'Apple', 'color': 'Red'},
    // {'id': 2, 'name': 'Banana', 'color': 'Yellow'},
    // {'id': 3, 'name': 'Cherry', 'color': 'Red'},
  ];

  final Rx<XFile?> selectedIdentityImage = Rx<XFile?>(null);
  ImagePicker _picker = ImagePicker();

  Future<void> uploadImage() async {
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      selectedIdentityImage.value = image;
    } else {
      return CustomSnackBar.error('You have been not pick image');
    }
  }

  final Rx<XFile?> selectedLicenseImg = Rx<XFile?>(null);

  Future<void> uploadLicenseImg() async {
    final licenseImg = await _picker.pickImage(source: ImageSource.camera);
    if (licenseImg != null) {
      selectedLicenseImg.value = licenseImg;
    } else {
      return CustomSnackBar.error('You have been not pick image');
    }
  }
}
