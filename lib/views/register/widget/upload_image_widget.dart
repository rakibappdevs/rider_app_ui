part of '../screen/register_screen.dart';

class UploadImageWidget extends GetView<RegisterController> {
  const UploadImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => _imagePickerBottomSheetWidget(context),
        );
      },
      child: Obx(
        () => DottedBorder(
          color: Colors.orange.withOpacity(0.8),
          borderType: BorderType.RRect,
          radius: Radius.circular(Dimensions.radius),
          dashPattern: [6, 3],
          strokeWidth: 1.5,
          child: Container(
            width: 180,
            height: 150,
            decoration: BoxDecoration(
              color: CustomColor.whiteColor,
              borderRadius: BorderRadius.circular(Dimensions.radius),
            ),
            child: controller.userSelectedImage.value == null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt_outlined,
                          size: Dimensions.iconSizeLarge, color: Colors.grey),
                      SizedBox(height: Dimensions.verticalSize * 0.4),
                      TextWidget(
                        textAlign: TextAlign.center,
                        Strings.upload,
                        color: CustomColor.secondary.withAlpha(99),
                        fontSize: Dimensions.titleSmall,
                      ),
                    ],
                  )
                : ClipRRect(
                    borderRadius: BorderRadius.circular(Dimensions.radius),
                    child: Image.file(
                      File(controller.userSelectedImage.value!.path),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
          ),
        ),
      ),
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
                  controller.selectYourImage(ImageSource.gallery);
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
                controller.selectYourImage(ImageSource.camera);

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
