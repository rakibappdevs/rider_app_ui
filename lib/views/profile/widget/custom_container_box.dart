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
                  showSwitch: true,
                  onChanged: (value) => controller.isDarkMode.value = value),
            ),
            Sizes.height.v10,
            Obx(
              () => CardTypeBox(
                title: Strings.systemNotification,
                onChanged: (value) =>
                    controller.systemNotificationEnabled.value = value,
                icon: Icons.notifications,
                value: controller.systemNotificationEnabled.value,
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
              ),
            ),
            Sizes.height.v10,
            CardTypeBox(
              title: Strings.conversation,
              onChanged: (value) {},
              icon: Icons.mark_chat_read,
              value: false,
              showSwitch: false,
            ),
          ],
        ),
      ),
    );
  }
}
