part of '../screen/login_screen.dart';

class LoginLogoWidget extends GetView<LoginController> {
  const LoginLogoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossCenter,
      mainAxisAlignment: mainCenter,
      children: [
        Center(
          child: Image.asset('assets/icons/logo.png'),
        ),
        TextWidget(
          textAlign: TextAlign.center,
          padding: EdgeInsets.only(
              bottom: Dimensions.verticalSize,
              top: Dimensions.verticalSize * 0.3),
          Strings.SignIn,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleLarge * 1.1,
        ),
      ],
    );
  }
}
