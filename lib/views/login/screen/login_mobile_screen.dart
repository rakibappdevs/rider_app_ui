part of 'login_screen.dart';

class LoginMobileScreen extends GetView<LoginController> {
  const LoginMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultHorizontalSize * 0.5),
        child: ListView(
          children: [
            Sizes.height.v40,
            Sizes.height.v40,
            LoginLogoWidget(),
            InputFieldWidget(),
            RememberWidget(),
            ButtonAndText()
          ],
        ),
      ),
    );
  }
}
