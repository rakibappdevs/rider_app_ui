part of 'profile_screen.dart';

class ProfileMobileScreen extends GetView<ProfileController> {
  const ProfileMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.secondary,
      appBar: AppBar(
        backgroundColor: CustomColor.secondary,
        title: TextWidget(
          Strings.Profile,
          color: CustomColor.whiteColor,
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Align(alignment: Alignment.bottomCenter, child: CustomContainerBox()),
          UserImageWidget()
        ],
      ),
    );
  }
}
