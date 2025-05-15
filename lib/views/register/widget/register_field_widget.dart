part of '../screen/register_screen.dart';

class RegisterFieldWidget extends GetView<RegisterController> {
  RegisterFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          Sizes.height.v30,
          Row(
            children: [
              Expanded(
                child: PrimaryInputWidget(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    isFilled: true,
                    controller: controller.firstNameController,
                    hintText: Strings.firstName),
              ),
              Sizes.width.v10,
              Expanded(
                child: PrimaryInputWidget(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.grey,
                    ),
                    isFilled: true,
                    controller: controller.lastNameController,
                    hintText: Strings.lastName),
              ),
            ],
          ),
          Sizes.height.betweenInputBox,
          PrimaryInputWidget(
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
            controller: controller.phoneNumberController,
            hintText: Strings.phone,
            textInputType: TextInputType.phone,
          ),
          Sizes.height.betweenInputBox,
          PrimaryInputWidget(
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
              isFilled: true,
              controller: controller.emailController,
              hintText: Strings.email),
          Sizes.height.betweenInputBox,
          PrimaryInputWidget(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              isPasswordField: true,
              isFilled: true,
              controller: controller.passwordController,
              hintText: Strings.password),
          Sizes.height.betweenInputBox,
          PrimaryInputWidget(
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
              isPasswordField: true,
              validator: true,
              isFilled: true,
              controller: controller.confirmPasswordController,
              hintText: Strings.confirmPassword),
          Sizes.height.betweenInputBox,
          Sizes.height.betweenInputBox,
          PrimaryButton(
            title: 'Next',
              onPressed: () {
                Get.toNamed(Routes.ragistrationScreen);
                //
                // if (controller.formKey.currentState!.validate()) {
                //   if (controller.userSelectedImage.value != null) {
                //     Get.toNamed(Routes.ragistrationScreen);
                //   } else {
                //     CustomSnackBar.error('Select a photo');
                //   }
                // }
              }

          )
        ],
      ),
    );
  }
}
