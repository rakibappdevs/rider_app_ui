part of '../screen/dashboard_screen.dart';

class SwitchButtonWidget extends GetView<DashboardController> {
  const SwitchButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isOnline = controller.isOnline.value;
      return GestureDetector(
        onTap: controller.toggle,
        child: AnimatedContainer(
          margin: EdgeInsets.only(right: Dimensions.defaultHorizontalSize),
          duration: const Duration(milliseconds: 300),
          width: 96,
          height: 36,
          decoration: BoxDecoration(
            color: isOnline ? CustomColor.primary : CustomColor.secondary,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Stack(
            children: [
              // Circle knob
              AnimatedAlign(
                duration: const Duration(milliseconds: 300),
                alignment:
                isOnline ? Alignment.centerRight : Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: isOnline ? 12 : 30,
                    right: isOnline ? 30 : 12,
                  ),
                  child: Align(
                    alignment:
                    isOnline ? Alignment.centerLeft : Alignment.centerRight,
                    child: TextWidget(
                      isOnline ? "Online" : "Offline",
                      color: CustomColor.whiteColor,
                      fontSize: Dimensions.titleSmall * 0.9,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
