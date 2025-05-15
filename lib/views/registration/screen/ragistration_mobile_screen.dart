part of 'registration_screen.dart';

class RegistrationMobileScreen extends GetView<RegistrationController> {
  const RegistrationMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultHorizontalSize,
            vertical: Dimensions.verticalSize),
        child: PrimaryButton(
          title: Strings.submit,
          onPressed: () {
            if (controller.selectedIdentityImage.value != null) {
              if (controller.selectedLicenseImg.value != null) {
                Get.offAllNamed(Routes.navigation);
                return CustomSnackBar.success(
                    title: 'Thank You',
                    message: "Successfully Submit Your Information");
              } else {
                return CustomSnackBar.error('Select Your License Image');
              }
            } else {
              return CustomSnackBar.error('Select Your Identity Image');
            }
          },
        ),
      ),
      appBar: CustomAppBar(Strings.deliveryManRegister),
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
            DroupdownsSection(),
            PickImageAndField(),
            DatePickImagePick()
          ],
        ),
      ),
    );
  }
}
