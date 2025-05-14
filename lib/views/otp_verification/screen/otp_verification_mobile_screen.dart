part of 'otp_verification_screen.dart';

class OtpVerificationMobileScreen extends GetView<OtpVerificationController> {
  const OtpVerificationMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('OtpVerification Mobile Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
