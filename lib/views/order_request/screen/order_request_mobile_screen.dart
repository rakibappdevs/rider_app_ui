part of 'order_request_screen.dart';

class OrderRequestMobileScreen extends GetView<OrderRequestController> {
  const OrderRequestMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(showBackButton: false, Strings.orderRequest),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultHorizontalSize,
            vertical: Dimensions.verticalSize * 0.4),
        child: ListView.builder(
          itemBuilder: (context, index) => OrderRequestCard(),
        ),
      ),
    );
  }
}
