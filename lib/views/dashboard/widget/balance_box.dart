part of '../screen/dashboard_screen.dart';

class BalanceBoxWidget extends StatelessWidget {
  final String balance;
  final String todayAmount;
  final String weekAmount;
  final String monthAmount;

  const BalanceBoxWidget({
    super.key,
    required this.balance,
    required this.todayAmount,
    required this.weekAmount,
    required this.monthAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          Strings.earnings,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleSmall,
          padding:
              EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.4),
        ),
        Container(
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
          decoration: BoxDecoration(
            color: CustomColor.secondary,
            borderRadius: BorderRadius.circular(Dimensions.radius),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  // Wallet icon
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.account_balance_wallet_outlined,
                      size: Dimensions.iconSizeLarge * 2,
                      color: CustomColor.whiteColor,
                    ),
                  ),
                  Sizes.width.v10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        Strings.balance,
                        fontSize: Dimensions.titleSmall,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whiteColor,
                      ),
                      Sizes.height.v5,
                      TextWidget(
                        '\$$balance',
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whiteColor,
                        fontSize: Dimensions.titleMedium * 1.2,
                      ),
                    ],
                  )
                ],
              ),
              Sizes.height.v40,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildColumn(Strings.today, todayAmount),
                  Container(
                      height: 35, width: 1, color: CustomColor.whiteColor),
                  _buildColumn(Strings.thisWeek, weekAmount),
                  Container(
                      height: 35, width: 1, color: CustomColor.whiteColor),
                  _buildColumn(Strings.ThisMonth, monthAmount),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  _buildColumn(String label, String amount) {
    return Column(
      children: [
        TextWidget(
          label,
          color: CustomColor.whiteColor.withAlpha(88),
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleSmall,
        ),
        Sizes.height.v10,
        TextWidget(
          '\$$amount',
          color: CustomColor.whiteColor,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
