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
              ActiveOrderWidget(),
              BalanceBoxWidget(
                balance: '2,000.00',
                todayAmount: '0.00',
                weekAmount: '0.00',
                monthAmount: '0.00',
              ),
              OrderCard(),
              PayNowWidgetBox()
            ],
          ),
        ),
      ),
    );
  }
}
