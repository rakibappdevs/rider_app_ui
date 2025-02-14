part of 'cart_screen.dart';

class CartMobileScreen extends GetView<CartController> {
  const CartMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        Strings.cart,
        showBackButton: false,
      ),
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
