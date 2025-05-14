part of 'forgot_password_screen.dart';

class ForgotPasswordMobileScreen extends GetView<ForgotPasswordController> {
  const ForgotPasswordMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(centerTitle: false, Strings.forgotPassword),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.defaultHorizontalSize),
          child: Column(
            children: [
              Sizes.height.v40,
              Sizes.height.v40,
              Image.asset('assets/icons/img.png'),
              Sizes.height.v20,
              TextWidget(
                textAlign: TextAlign.center,
                fontSize: Dimensions.titleSmall,
                'Please enter your registered mobile number so that we can help you recover your password',
              ),
              Sizes.height.v20,
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      showCountryPicker(
                        context: context,
                        onSelect: (value) {
                          controller.selectedCountryCode.value =
                              value.phoneCode;
                          controller.selectedCountryFlag.value =
                              value.flagEmoji;
                        },
                      );
                    },
                    child: Container(
                        child: Obx(
                      () => Row(
                        crossAxisAlignment: crossStart,
                        children: [
                          TextWidget(controller.selectedCountryFlag.value),
                          TextWidget(
                              padding: EdgeInsets.only(
                                  left: Dimensions.defaultHorizontalSize * 0.5),
                              '+${controller.selectedCountryCode.value}'),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                    )),
                  ),
                  Sizes.width.v10,
                  Expanded(
                    child: PrimaryInputWidget(
                        showBorderSide: true,
                        controller: TextEditingController(),
                        hintText: 'XXX-XXX-XXX'),
                  )
                ],
              ),
              Sizes.height.betweenInputBox,
              Sizes.height.betweenInputBox,
              PrimaryButton(
                title: 'Next',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
