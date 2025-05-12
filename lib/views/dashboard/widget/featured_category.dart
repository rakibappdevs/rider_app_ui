part of '../screen/dashboard_screen.dart';

class OrderSummery extends StatelessWidget {
  const OrderSummery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(
            Strings.orderSummary,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
