import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/login_controller.dart';
part 'login_tablet_screen.dart';
part 'login_mobile_screen.dart';
part '../widget/login_logo_widget.dart';
part '../widget/input_field_widget.dart';
part '../widget/button_and_text.dart';
part '../widget/remember_widget.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: LoginMobileScreen(),
      tablet: LoginTabletScreen(),
    );
  }
}

