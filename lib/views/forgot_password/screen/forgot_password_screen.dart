import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/forgot_password_controller.dart';
part 'forgot_password_tablet_screen.dart';
part 'forgot_password_mobile_screen.dart';

class ForgotPasswordScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ForgotPasswordMobileScreen(),
      tablet: ForgotPasswordTabletScreen(),
    );
  }
}
