part of 'dashboard_screen.dart';

class DashboardMobileScreen extends GetView<DashboardController> {
  const DashboardMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarWidget(),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return RefreshIndicator(
      color: CustomColor.primary,
      onRefresh: () async {},
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.defaultHorizontalSize),
          child: ListView(
            children: [
              BalanceBoxWidget(
                balance: '2,000.00',
                todayAmount: '0.00',
                weekAmount: '0.00',
                monthAmount: '0.00',
              ),
              OrderCard(),
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
                    Container(
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
