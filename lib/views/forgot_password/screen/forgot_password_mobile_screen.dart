part of 'forgot_password_screen.dart';

class ForgotPasswordMobileScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('ForgotPassword Mobile Screen'),
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
