import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibanking/base/widgets/custom_date_picker.dart';
import 'package:ibanking/routes/routes.dart';
import 'package:image_picker/image_picker.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/ragistration_controller.dart';
part 'ragistration_tablet_screen.dart';
part 'ragistration_mobile_screen.dart';
part '../widget/droupdowns_section.dart';
part '../widget/pick_image_and_field.dart';
part '../widget/date_pick_image_pick.dart';

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
