part of '../screen/my_account_screen.dart';

class AmountCard extends GetView<MyAccountController> {
  const AmountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
      decoration: BoxDecoration(
        color: CustomColor.secondary,
        borderRadius: BorderRadius.circular(Dimensions.radius),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              Wrap(
                children: [
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    color: CustomColor.whiteColor,
                  ),
                  Sizes.width.v10,
                  TextWidget(
                    Strings.payableAmount,
                    color: CustomColor.whiteColor,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSize * 0.5,
                    vertical: Dimensions.verticalSize * 0.2),
                decoration: BoxDecoration(
                  color: CustomColor.primary,
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                ),
                child: TextWidget(
                  Strings.adjustPayment,
                  fontWeight: FontWeight.w500,
                  fontSize: Dimensions.titleSmall,
                  color: CustomColor.whiteColor,
                ),
              )
            ],
          ),
          Sizes.height.v20,
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              TextWidget(
                '\$845.89',
                fontSize: Dimensions.titleLarge,
                color: CustomColor.whiteColor,
                fontWeight: FontWeight.bold,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSize * 0.5,
                    vertical: Dimensions.verticalSize * 0.2),
                decoration: BoxDecoration(
                  color: CustomColor.primary,
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                ),
                child: TextWidget(
                  Strings.payNow,
                  fontWeight: FontWeight.w500,
                  fontSize: Dimensions.titleSmall,
                  color: CustomColor.whiteColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
