import 'dart:io';
import 'package:country_picker/country_picker.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibanking/routes/routes.dart';
import 'package:image_picker/image_picker.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/register_controller.dart';
part 'register_tablet_screen.dart';
part 'register_mobile_screen.dart';
part '../widget/register_field_widget.dart';
part '../widget/upload_image_widget.dart';
class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RegisterMobileScreen(),
      tablet: RegisterTabletScreen(),
    );
  }
}

