part of 'edit_profile_screen.dart';

class EditProfileMobileScreen extends GetView<EditProfileController> {
  const EditProfileMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.secondary,
      appBar: CustomAppBar(
        'Profile',
        showBackButton: true,
        autoLeading: true,
        isWhite: true,
        backgroundColor: CustomColor.secondary,
      ),
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.only(top: Dimensions.verticalSize * 2.4),
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: CustomColor.background,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius * 1.4),
                    topRight: Radius.circular(Dimensions.radius * 1.4),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.defaultHorizontalSize),
                  child: ListView(
                    children: [
                      PrimaryInputWidget(
                          label: Strings.firstName,
                          isFilled: true,
                          controller: controller.firstNameController,
                          hintText: Strings.firstName),
                      Sizes.height.betweenInputBox,
                      PrimaryInputWidget(
                          label: Strings.lastName,
                          isFilled: true,
                          controller: controller.lastNameController,
                          hintText: Strings.lastName),
                      Sizes.height.betweenInputBox,
                      PrimaryInputWidget(
                          label: Strings.email,
                          isFilled: true,
                          controller: controller.emailController,
                          hintText: Strings.email),
                      Sizes.height.betweenInputBox,
                      PrimaryInputWidget(
                          label: Strings.phone,
                          optionalText: "(Non changeable)",
                          readOnly: true,
                          isFilled: true,
                          controller: controller.phoneNumberController,
                          hintText: Strings.phone),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: Dimensions.verticalSize),
                        child: PrimaryButton(
                          title: "Update",
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.35,
            top: 35,
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => _imagePickerBottomSheetWidget(context),
                );
              },
              child: CircleAvatar(
                radius: Dimensions.radius * 5,
                backgroundColor: Colors.transparent,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipOval(
                        child: controller.selectedUserImage.value == null
                            ? CachedNetworkImage(
                                imageUrl:
                                    'https://img.myloview.com/stickers/happy-handsome-male-business-leader-businessman-professional-in-glasses-looking-at-camera-with-toothy-smile-office-employee-manager-small-business-owner-head-shot-portrait-700-279798845.jpg',
                                fit: BoxFit.cover,
                                width: Dimensions.radius * 10,
                                height: Dimensions.radius * 10,
                                placeholder: (context, url) =>
                                    CircularProgressIndicator(
                                  color: CustomColor.primary,
                                ),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              )
                            : ClipRRect(
                          // borderRadius: BorderRadius.circular(Dimensions.radius * 10),
                                child: Image.file(
                                    File(controller.selectedUserImage.value!.path),fit: BoxFit.cover,
                                  width: Dimensions.radius * 10,
                                  height: Dimensions.radius * 10,
                                ),
                              )),
                    Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: CustomColor.whiteColor, width: 2)),
                        padding: EdgeInsets.all(
                          Dimensions.paddingSize * 0.25,
                        ),
                        child: Icon(Icons.camera_alt))
                  ],
                ),
              ),
            ),
          ),
        ],
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
                  controller.updateImage(ImageSource.gallery);
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
                controller.updateImage(ImageSource.camera);
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
