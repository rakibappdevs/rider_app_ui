part of '../screen/incentive_screen.dart';

class TotalIncentiveAmountBox extends GetView<IncentiveController> {
  const TotalIncentiveAmountBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: Dimensions.verticalSize * 0.5, bottom: Dimensions.verticalSize * 0.6),
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius),
          color: CustomColor.primary),
      child: Column(
        mainAxisAlignment: mainCenter,
        children: [
          TextWidget(
            Strings.youHaveTotalIncentive,
            fontSize: Dimensions.titleLarge * 0.9,
            color: CustomColor.whiteColor,
            fontWeight: FontWeight.w500,
          ),
          TextWidget(
            '\$ 0.00',
            fontWeight: FontWeight.bold,
            color: CustomColor.whiteColor,
            fontSize: Dimensions.titleLarge * 0.9,
          ),
        ],
      ),
    );
  }
}
