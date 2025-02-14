import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../base/utils/basic_import.dart';
import '../controller/cart_controller.dart';

part 'cart_mobile_screen.dart';
part 'cart_tablet_screen.dart';

class CartScreen extends GetView<CartController> {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CartMobileScreen(),
      tablet: CartTabletScreen(),
    );
  }
}
