part of '../screen/registration_screen.dart';

class PickImageAndField extends GetView<RegistrationController> {
  const PickImageAndField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            showModalBottomSheet(
              context: context,
              builder: (context) => _imagePickerBottomSheetWidget(context),
            );          },
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
                        borderRadius: BorderRadius.circular(Dimensions.radius),
                        child: Image.file(
                          File(controller.selectedIdentityImage.value!.path),
                          fit: BoxFit.cover,
                          width: double.maxFinite,
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
                  Get.back();
                  controller.uploadImage(ImageSource.gallery);
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
                Get.back();
                controller.uploadImage(ImageSource.gallery);
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
