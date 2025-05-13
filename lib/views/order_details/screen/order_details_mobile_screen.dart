part of 'order_details_screen.dart';

class OrderDetailsMobileScreen extends GetView<OrderDetailsController> {
  const OrderDetailsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.whiteColor,
      appBar: AppBar(
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
        ],
      ),
    );
  }
}
