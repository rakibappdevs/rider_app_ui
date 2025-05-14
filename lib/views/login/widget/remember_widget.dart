part of '../screen/login_screen.dart';

class RememberWidget extends GetView<LoginController> {
  const RememberWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainSpaceBet,
      children: [
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Obx(
              () => Checkbox(
                activeColor: CustomColor.primary,
                value: controller.isChecked.value,
                onChanged: (value) {
                  controller.isChecked.value = value!;
                },
              ),
            ),
            TextWidget(
              Strings.rememberMe,
              fontSize: Dimensions.titleSmall,
            ),
          ],
        ),
        TextWidget(
          onTap: () {
            Get.toNamed(Routes.forgot_passwordScreen);
          },
          Strings.forgotPassword,
          fontWeight: FontWeight.w500,
          fontSize: Dimensions.titleSmall,
          color: CustomColor.primary,
        ),
      ],
    );
  }
}
