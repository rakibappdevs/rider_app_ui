part of '../screen/login_screen.dart';

class InputFieldWidget extends GetView<LoginController> {
  const InputFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.verticalSize * 0.5),
        decoration: BoxDecoration(
          color: CustomColor.whiteColor,
          borderRadius: BorderRadius.circular(Dimensions.radius * 1.1),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              PrimaryInputWidget(
                validator: true,
                prefixIcon: GestureDetector(
                  onTap: () {
                    showCountryPicker(
                      context: context,
                      onSelect: (value) {
                        controller.selectedCountryCode.value = value.phoneCode;
                        controller.selectedCountryFlag.value = value.flagEmoji;
                      },
                    );
                  },
                  child: Obx(
                    () => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextWidget(
                          controller.selectedCountryFlag.value,
                          padding: EdgeInsets.only(left: Dimensions.heightSize),
                        ),
                        TextWidget(
                          '+${controller.selectedCountryCode.value}',
                          padding: EdgeInsets.only(
                            left: Dimensions.defaultHorizontalSize * 0.5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: Dimensions.heightSize),
                          height: 25,
                          width: 2,
                          color: CustomColor.secondary.withAlpha(66),
                        ),
                      ],
                    ),
                  ),
                ),
                isFilled: true,
                controller: controller.phoneController,
                hintText: 'XXX-XXX-XXX',
                textInputType: TextInputType.phone,
              ),
              Divider(
                color: Colors.grey.withAlpha(88),
              ),
              PrimaryInputWidget(
                validator: true,
                isPasswordField: true,
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                controller: controller.passwordController,
                hintText: Strings.password,
                skipEnterText: true,
                showBorderSide: false,
              ),
            ],
          ),
        ),);
  }
}
