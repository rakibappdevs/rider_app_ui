part of 'register_screen.dart';

class RegisterMobileScreen extends GetView<RegisterController> {
  const RegisterMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: true,
        title: TextWidget(
          'Delivery Man Register',
          fontWeight: FontWeight.w700,
        ),
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Sizes.height.v40,
              UploadImageWidget(),
              RegisterFieldWidget()
            ],
          ),
        ),
      ),
    );
  }
}
