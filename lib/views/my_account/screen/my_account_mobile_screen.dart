part of 'my_account_screen.dart';

class MyAccountMobileScreen extends GetView<MyAccountController> {
  const MyAccountMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(Strings.myAccount),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
        child: Column(
          children: [
            Sizes.height.v10,
            AmountCard(),
            Sizes.height.v10,
            TwoCardAmount(),
            Row(
              children: [
                TextWidget(
                  "Transaction History",
                  // textAlign: TextAlign.left,
                  fontWeight: FontWeight.w500,
                  padding: EdgeInsets.only(
                      top: Dimensions.verticalSize * 0.5,
                      bottom: Dimensions.verticalSize * 0.2),
                ),
              ],
            ),
            Expanded(child: TransactionHistorySection())
          ],
        ),
      ),
    );
  }
}
