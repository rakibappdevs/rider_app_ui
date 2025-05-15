part of 'ragistration_screen.dart';

class RegistrationMobileScreen extends GetView<RegistrationController> {
  const RegistrationMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize,vertical: Dimensions.verticalSize),
        child: PrimaryButton(
          title: Strings.submit,
          onPressed: () {},
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
            Sizes.height.betweenInputBox,
            Row(
              children: [
                Expanded(
                  child: CustomDropDown(
                      itemsList: controller.items,
                      selectMethod: controller.selectedDeliveryType),
                ),
                Sizes.width.v10,
                Expanded(
                  child: CustomDropDown(
                      itemsList: controller.items,
                      selectMethod: controller.allOverTheWorld),
                ),
              ],
            ),
            Sizes.height.betweenInputBox,
            CustomDropDown(
                itemsList: controller.items,
                selectMethod: controller.selectVehicle),
            Sizes.height.betweenInputBox,
            CustomDropDown(
                itemsList: controller.items, selectMethod: controller.passport),
            Sizes.height.betweenInputBox,
            PrimaryInputWidget(
              controller: TextEditingController(),
              hintText: 'Ex: XXXXX-XXXXXX-X',
              fillColor: CustomColor.whiteColor,
              isFilled: true,
            ),
            Sizes.height.betweenInputBox,
            GestureDetector(
              onTap: () {
                controller.uploadImage();
              },
              child: Obx(
                () => DottedBorder(
                  color: CustomColor.primary.withAlpha(88),
                  borderType: BorderType.RRect,
                  radius: Radius.circular(Dimensions.radius),
                  dashPattern: [6, 3],
                  strokeWidth: 1.8,
                  child: Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.16,
                    child: controller.selectedIdentityImage.value == null
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.camera_alt_outlined,
                                  size: Dimensions.iconSizeLarge,
                                  color: Colors.grey),
                              SizedBox(height: Dimensions.verticalSize * 0.4),
                              TextWidget(
                                textAlign: TextAlign.center,
                                Strings.uploadIdentityImage,
                                color: CustomColor.secondary.withAlpha(55),
                                fontSize: Dimensions.titleSmall,
                              ),
                            ],
                          )
                        : ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius),
                            child: Image.file(
                              File(
                                  controller.selectedIdentityImage.value!.path),
                              fit: BoxFit.cover,
                            ),
                          ),
                  ),
                ),
              ),
            ),
            Sizes.height.betweenInputBox,
            PrimaryInputWidget(
              controller: TextEditingController(),
              hintText: 'Enter Age',
              fillColor: CustomColor.whiteColor,
              isFilled: true,
            ),
            Sizes.height.betweenInputBox,
            CustomDatePicker(selectedDate: controller.selectedDate),
            Sizes.height.betweenInputBox,
            TextWidget(Strings.drivingLicense),
            GestureDetector(
              onTap: () {
                controller.uploadLicenseImg();
              },
              child: Obx(
                () => Container(
                  margin: EdgeInsets.only(
                      top: Dimensions.verticalSize * 0.2,
                      bottom: Dimensions.verticalSize),
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                      color: CustomColor.primary.withAlpha(44),
                      borderRadius: BorderRadius.circular(Dimensions.radius)),
                  child: controller.selectedLicenseImg.value == null
                      ? Icon(
                          Icons.add,
                          size: Dimensions.iconSizeLarge * 1.5,
                          color: Colors.grey.withAlpha(99),
                        )
                      : ClipRRect(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius),
                          child: Image.file(
                            File(
                              controller.selectedLicenseImg.value!.path,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
