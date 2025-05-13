part of '../screen/profile_screen.dart';

class DayBoxWidget extends GetView<ProfileController> {
  const DayBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(Dimensions.paddingSize),
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(Dimensions.radius),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      // Soft shadow
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: CustomColor.whiteColor),
              child: Column(
                children: [
                  TextWidget(
                    '824 Days',
                    color: CustomColor.primary,
                  ),
                  TextWidget(Strings.sinceJoining),
                ],
              ),
            ),
          ),
          Sizes.width.v10,
          Expanded(
            child: Container(
              padding: EdgeInsets.all(Dimensions.paddingSize),
              decoration: BoxDecoration(
                color: CustomColor.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
                borderRadius:
                BorderRadius.circular(Dimensions.radius),
              ),
              child: Column(
                children: [
                  TextWidget(
                    '824',
                    color: CustomColor.primary,
                  ),
                  TextWidget(Strings.totalOrders),
                ],
              ),
            ),
          )
        ],
      );
  
  }
}
