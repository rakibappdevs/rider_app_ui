part of 'order_request_screen.dart';

class OrderRequestTabletScreen extends GetView<OrderRequestController> {
  const OrderRequestTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('OrderRequest Tablet Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
