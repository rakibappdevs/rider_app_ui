import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/otp_verification_controller.dart';
part 'otp_verification_tablet_screen.dart';
part 'otp_verification_mobile_screen.dart';

class OtpVerificationScreen extends GetView<OtpVerificationController> {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: OtpVerificationMobileScreen(),
      tablet: OtpVerificationTabletScreen(),
    );
  }
}
