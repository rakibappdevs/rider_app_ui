part of '../screen/dashboard_screen.dart';

class PayNowWidgetBox extends GetView<DashboardController> {
  const PayNowWidgetBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: EdgeInsets.symmetric(
            vertical: Dimensions.verticalSize * 0.5),
        padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius),
          color: CustomColor.whiteColor,
        ),
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            Column(
              crossAxisAlignment: crossStart,
              children: [
                TextWidget(
                  '\$845.89',
                  fontWeight: FontWeight.bold,
                  fontSize: Dimensions.titleMedium * 1.2,
                ),
                Row(
                  children: [
                    TextWidget(
                      Strings.cashInYourHand,
                      fontSize: Dimensions.titleSmall,
                      color: CustomColor.secondary.withAlpha(88),
                    ),
                    Sizes.width.v5,
                    TextWidget(
                      '(Limit Exceeded)',
                      color: CustomColor.rejected,
                      fontSize: Dimensions.titleSmall * 0.8,
                    )
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () => Get.toNamed(Routes.my_accountScreen),
              child: Container(
                padding: EdgeInsets.all(Dimensions.paddingSize * 0.35),
                decoration: BoxDecoration(
                    color: CustomColor.primary,
                    borderRadius:
                    BorderRadius.circular(Dimensions.radius * 1.2)),
                child: TextWidget(
                  Strings.payNow,
                  color: CustomColor.whiteColor,
                  fontSize: Dimensions.titleSmall * 0.9,
                ),
              ),
            )
          ],
        ),
      );
    
  
  }
}
