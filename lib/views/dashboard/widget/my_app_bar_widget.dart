part of '../screen/dashboard_screen.dart';

class MyAppBarWidget extends GetView<DashboardController>
    implements PreferredSizeWidget {
  const MyAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Dimensions.verticalSize * 0.4),
      child: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: CustomColor.whiteColor,
        shadowColor: CustomColor.blackColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: CustomColor.whiteColor,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Wrap(
          runAlignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: Dimensions.defaultHorizontalSize * 0.5),
              child: Icon(
                size: Dimensions.iconSizeLarge,
                Icons.bike_scooter_outlined,
                color: CustomColor.primary,
              ),
            ),
            TextWidget(
              Strings.welcomeBack,
              fontWeight: FontWeight.w900,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          SwitchButtonWidget()
        ],
      ),
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
