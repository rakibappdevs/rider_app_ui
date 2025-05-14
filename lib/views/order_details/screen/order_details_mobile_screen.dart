part of 'order_details_screen.dart';

class OrderDetailsMobileScreen extends GetView<OrderDetailsController> {
  const OrderDetailsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          color: Colors.orangeAccent.withAlpha(44),
        ),
        child: Column(
          children: [
            TextWidget(
              padding: EdgeInsets.only(top: Dimensions.verticalSize),
              Strings.foodIsWaitingForCook,
              fontWeight: FontWeight.bold,
            ),
            TextWidget(
              Strings.whenItsReadyCookingYouWillBeNotified,
              fontSize: Dimensions.titleSmall,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      backgroundColor: CustomColor.whiteColor,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: CustomColor.background,
        toolbarHeight: Dimensions.appBarHeight * 1.5,
        centerTitle: true,
        title: Column(
          children: [
            TextWidget(
              'Order#100100',
              fontSize: Dimensions.titleSmall,
              fontWeight: FontWeight.w700,
            ),
            TextWidget(
              Strings.orderIsAccepted,
              color: CustomColor.primary,
              fontSize: Dimensions.titleSmall,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Sizes.height.v10,
          Image.network(
              'https://media.istockphoto.com/id/1384518986/vector/clip-art-of-cooking-saute-meat-and-vegetables-vector-illustration.jpg?s=612x612&w=0&k=20&c=rrmgJcoLNVQ0hlSlm1WsRHKjOZR1t73Xc11csljW9o8=',
              height: MediaQuery.of(context).size.height * 0.2),
          TextWidget(
            textAlign: TextAlign.center,
            Strings.foodNeedToDeliverWithing,
            fontSize: Dimensions.titleSmall,
            color: CustomColor.secondary.withAlpha(99),
          ),
          Row(
            mainAxisAlignment: mainCenter,
            children: [
              TextWidget(
                "1 -5",
                fontWeight: FontWeight.bold,
              ),
              Sizes.width.v5,
              TextWidget(
                'Min',
                color: CustomColor.primary,
              )
            ],
          ),
          DetailsCard(),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.5),
            child: InfoItemsWidget(),
          ),
          Sizes.width.v5,
          InfoItemsWidget(),
          Container(
            margin:
                EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.5),
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.defaultHorizontalSize,
                vertical: Dimensions.verticalSize * 0.25),
            color: CustomColor.secondary.withAlpha(11),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: mainSpaceBet,
                  children: [
                    TextWidget(
                      Strings.paymentMethod,
                      fontWeight: FontWeight.bold,
                    ),
                    TextWidget(
                      Strings.unpaid,
                      fontSize: Dimensions.titleSmall,
                      color: CustomColor.primary,
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                Row(
                  children: [
                    Icon(Icons.attach_money_rounded),
                    TextWidget(
                      Strings.cash,
                      color: CustomColor.secondary.withAlpha(88),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.25),
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.defaultHorizontalSize,
                vertical: Dimensions.verticalSize * 0.25),
            color: CustomColor.secondary.withAlpha(11),
            child: Column(
              crossAxisAlignment: crossStart,
              children: [
                TextWidget(
                  "Billing Info",
                  fontWeight: FontWeight.bold,
                  padding: EdgeInsets.symmetric(
                      vertical: Dimensions.verticalSize * 0.2),
                ),
                Row(
                  mainAxisAlignment: mainSpaceBet,
                  children: [
                    TextWidget(
                      Strings.subtotal,
                      fontSize: Dimensions.titleSmall,
                      color: Colors.grey,
                    ),
                    TextWidget(
                      '\$ 695.54',
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.titleSmall,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: Dimensions.verticalSize * 0.2),
                  child: Row(
                    mainAxisAlignment: mainSpaceBet,
                    children: [
                      TextWidget(
                        Strings.deliveryManTips,
                        fontSize: Dimensions.titleSmall,
                        color: Colors.grey,
                      ),
                      TextWidget(
                        '\$ 695.54',
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.titleSmall,
                        color: CustomColor.primary,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.withAlpha(66),
                ),
                Row(
                  mainAxisAlignment: mainSpaceBet,
                  children: [
                    TextWidget(
                      Strings.totalAmount,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.titleSmall,
                      color: CustomColor.primary,
                    ),
                    TextWidget(
                      '\$ 695.54',
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.titleSmall,
                      color: CustomColor.primary,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Sizes.width.v40,
        ],
      ),
    );
  }
}
