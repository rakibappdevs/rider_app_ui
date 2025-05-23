part of '../screen/login_screen.dart';

class ButtonAndText extends GetView<LoginController> {
  const ButtonAndText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sizes.height.v40,
        PrimaryButton(
          title: Strings.signIn,
          onPressed: () {
            if (controller.validateForm()) {
              Get.offAllNamed(Routes.navigation);
            } else {
              print('Form is not valid');
            }
          },
        ),
        Row(
          mainAxisAlignment: mainCenter,
          children: [
            TextWidget(
              Strings.joinAsA,
              color: Colors.grey.withAlpha(99),
            ),
            TextWidget(
              onTap: () {
                Get.toNamed(Routes.registerScreen,

                );
              },
              padding: EdgeInsets.symmetric(vertical: Dimensions.verticalSize),
              Strings.deliveryMan,
              fontWeight: FontWeight.bold,
              fontSize: Dimensions.titleSmall,
            ),
          ],
        )
      ],
    );
  }
}
