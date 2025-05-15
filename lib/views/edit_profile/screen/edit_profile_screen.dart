import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/edit_profile_controller.dart';
part 'edit_profile_tablet_screen.dart';
part 'edit_profile_mobile_screen.dart';

class EditProfileScreen extends GetView<EditProfileController> {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: EditProfileMobileScreen(),
      tablet: EditProfileTabletScreen(),
    );
  }
}
