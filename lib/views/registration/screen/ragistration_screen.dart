import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibanking/base/widgets/custom_date_picker.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/ragistration_controller.dart';
part 'ragistration_tablet_screen.dart';
part 'ragistration_mobile_screen.dart';

class RegistrationScreen extends GetView<RegistrationController> {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RegistrationMobileScreen(),
      tablet: RagistrationTabletScreen(),
    );
  }
}
