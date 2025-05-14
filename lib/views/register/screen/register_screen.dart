import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/register_controller.dart';
part 'register_tablet_screen.dart';
part 'register_mobile_screen.dart';

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
