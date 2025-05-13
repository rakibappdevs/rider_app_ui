part of '../screen/profile_screen.dart';

class CustomContainerBox extends GetView<ProfileController> {
  const CustomContainerBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
        child: ListView(
          children: [
            NameTime(),
            Sizes.height.v20,
            DayBoxWidget(),
            Sizes.height.v25,
            Obx(
              () => CardTypeBox(
                title: Strings.darkMode,
                icon: Icons.dark_mode,
                value: controller.isDarkMode.value,
                onChanged: (value) => controller.isDarkMode.value = value,
                showSwitch: true,
              ),
            ),
            Sizes.height.v10,
            Obx(
              () => CardTypeBox(
                title: Strings.systemNotification,
                onChanged: (value) =>
                    controller.systemNotificationEnabled.value = value,
                icon: Icons.notifications,
                value: controller.systemNotificationEnabled.value,
                showSwitch: true,
              ),
            ),
            Sizes.height.v10,
            Obx(
              () => CardTypeBox(
                title: Strings.backgroundNotification,
                onChanged: (value) =>
                    controller.backgroundNotificationEnabled.value = value,
                icon: Icons.notifications_on_sharp,
                value: controller.backgroundNotificationEnabled.value,
                showSwitch: true,
              ),
            ),
            Sizes.height.v10,
            CardTypeBox(
              title: Strings.conversation,
              icon: Icons.mark_chat_read,
            ),
            Sizes.height.v10,
            CardTypeBox(
              title: Strings.myAccount,
              icon: Icons.home,
            ),
            Sizes.height.v10,
            GestureDetector(
              onTap: () => _deleteAccountDialog(context),
              child: CardTypeBox(
                title: Strings.deleteAccount,
                icon: Icons.delete,
              ),
            ),
            Sizes.height.v10,
            GestureDetector(
              onTap: () => _bottomLogOutDialog(context),
              child: CardTypeBox(
                title: Strings.logOut,
                icon: Icons.logout,
              ),
            ),
            Sizes.height.v10,
          ],
        ),
      ),
    );
  }
}

_bottomLogOutDialog(context) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(Dimensions.radius * 1.5),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(Dimensions.radius * 1.5)),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.horizontalSize,
          vertical: Dimensions.verticalSize * 0.5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: Dimensions.widthSize * 4.2,
                height: Dimensions.heightSize * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                  color: Colors.black,
                ),
              ),
            ),
            Sizes.height.v20,
            TextWidget(
              Strings.logOutAlert,
              typographyStyle: TypographyStyle.titleSmall,
              fontWeight: FontWeight.bold,
              padding: EdgeInsets.only(
                bottom: Dimensions.verticalSize * 0.15,
              ),
            ),
            TextWidget(
              Strings.logOutAlertNote,
              typographyStyle: TypographyStyle.bodyMedium,
            ),
            Sizes.height.betweenInputBox,
            PrimaryButton(
              title: Strings.cancel,
              onPressed: () {
                Get.close(1);
              },
              buttonColor: Colors.white,
              borderColor: Colors.white,
              buttonTextColor: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.6,
              ),
              child: PrimaryButton(
                title: Strings.logOut,
                // isLoading: Get.put(LogInController()).isLoading,
                onPressed: () {
                  // Get.put(LogInController()).logOutProcess();
                },
                buttonColor: Colors.red,
                borderColor: Colors.red,
              ),
            ),
          ],
        ),
      );
    },
  );
}
_deleteAccountDialog(context) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(Dimensions.radius * 1.5),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(Dimensions.radius * 1.5)),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.horizontalSize,
          vertical: Dimensions.verticalSize * 0.5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: Dimensions.widthSize * 4.2,
                height: Dimensions.heightSize * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                  color: Colors.black,
                ),
              ),
            ),
            Sizes.height.v20,
            TextWidget(
              Strings.accountDeleteAlert,
              typographyStyle: TypographyStyle.titleSmall,
              fontWeight: FontWeight.bold,
              padding: EdgeInsets.only(
                bottom: Dimensions.verticalSize * 0.15,
              ),
            ),
            TextWidget(
              Strings.accountDeleteAlertNote,
              typographyStyle: TypographyStyle.bodyMedium,
            ),
            Sizes.height.betweenInputBox,
            PrimaryButton(
              title: Strings.cancel,
              onPressed: () {
                Get.close(1);
              },
              buttonColor: Colors.white,
              borderColor: Colors.white,
              buttonTextColor: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.6,
              ),
              child: PrimaryButton(
                title: Strings.delete,
                // isLoading: Get.put(LogInController()).isLoading,
                onPressed: () {
                  // Get.put(LogInController()).logOutProcess();
                },
                buttonColor: Colors.red,
                borderColor: Colors.red,
              ),
            ),
          ],
        ),
      );
    },
  );
}
