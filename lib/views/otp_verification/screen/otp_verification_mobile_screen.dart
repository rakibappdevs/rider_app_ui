part of 'otp_verification_screen.dart';

class OtpVerificationMobileScreen extends GetView<OtpVerificationController> {
  const OtpVerificationMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(Strings.otpVerification),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
        child: ListView(
          children: [
            Sizes.height.v40,
            Sizes.height.v10,
            Image.network(
              'https://cdni.iconscout.com/illustration/premium/thumb/otp-illustration-download-in-svg-png-gif-file-formats--password-authentication-security-one-time-text-lock-identity-pack-crime-illustrations-6612931.png',
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            TextWidget(
              textAlign: TextAlign.center,
              padding: EdgeInsets.only(bottom: Dimensions.verticalSize),
              "For demo purpose please use 123456 as OTP",
              fontSize: Dimensions.titleSmall,
            ),
            PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                inactiveFillColor: CustomColor.background,
                selectedFillColor: CustomColor.whiteColor,
                shape: PinCodeFieldShape.box,
                activeColor: CustomColor.primary.withAlpha(88),
                inactiveColor: CustomColor.primary.withAlpha(88),
                inactiveBorderWidth: 2,
                activeBorderWidth: 2,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 65,
                fieldWidth: 52,
                activeFillColor: Colors.white,
              ),
              animationDuration: Duration(milliseconds: 300),
              enableActiveFill: true,
              controller: TextEditingController(),
              onCompleted: (v) {
                print("Completed");
              },
              beforeTextPaste: (text) {
                print("Allowing to paste $text");
                return true;
              },
            ),
            Sizes.height.v40,
            Row(
              mainAxisAlignment: mainCenter,
              children: [
                TextWidget(
                  'Didnt receive the code? ',
                  color: Colors.grey,
                  fontSize: Dimensions.titleSmall * 0.9,
                ),
                TextWidget(
                  ' Resend',
                  color: CustomColor.primary,
                  fontSize: Dimensions.titleSmall,
                ),
              ],
            ),
            Sizes.height.v20,
            PrimaryButton(
              title: "Verify",
              onPressed: () {
                Get.offAllNamed(Routes.navigation);
              },
            )
          ],
        ),
      ),
    );
  }
}
