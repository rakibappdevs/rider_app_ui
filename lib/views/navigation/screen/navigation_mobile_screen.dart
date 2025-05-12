part of 'navigation_screen.dart';

class NavigationMobileScreen extends GetView<NavigationController> {
  const NavigationMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.green,
      body: Obx(() => controller.bodyPages[controller.selectedIndex.value]),
      bottomNavigationBar: NavigationBarWidget(),
      // floatingActionButton: Obx(() => Visibility(
      //       visible: controller.selectedIndex.value == 0,
      //       child: ActionButton(),
      //     )),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
