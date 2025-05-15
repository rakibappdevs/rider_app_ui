part of '../screen/registration_screen.dart';

class DatePickImagePick extends GetView<RegistrationController> {
  const DatePickImagePick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Sizes.height.betweenInputBox,
        CustomDatePicker(selectedDate: controller.selectedDate),
        Sizes.height.betweenInputBox,
        TextWidget(Strings.drivingLicense),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => _imagePickerBottomSheetWidget(context),
            );          },
          child: Obx(
            () => Container(
              width: double.maxFinite,
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
                      borderRadius: BorderRadius.circular(Dimensions.radius),
                      child: Image.file(
                        File(
                          controller.selectedLicenseImg.value!.path,
                        ),
                        fit: BoxFit.cover,
                        width: double.maxFinite,

                      ),
                    ),
            ),
          ),
        )
      ],
    );
  }
  _imagePickerBottomSheetWidget(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      margin: EdgeInsets.all(Dimensions.verticalSize * 0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(Dimensions.paddingSize),
            child: IconButton(
                onPressed: () {
                  controller.uploadLicenseImg(ImageSource.gallery);
                  Get.back();

                },
                icon: Icon(
                  Icons.image,
                  color: CustomColor.primary,
                  size: 50,
                )),
          ),
          Padding(
            padding: EdgeInsets.all(Dimensions.paddingSize),
            child: IconButton(
              onPressed: () {
                controller.uploadLicenseImg(ImageSource.gallery);
                Get.back();

              },
              icon: Icon(
                Icons.camera,
                color: CustomColor.primary,
                size: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }

}
