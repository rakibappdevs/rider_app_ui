import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/my_order_controller.dart';
part 'my_order_tablet_screen.dart';
part 'my_order_mobile_screen.dart';
part '../widget/details_card.dart';

class MyOrderScreen extends GetView<MyOrderController> {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MyOrderMobileScreen(),
      tablet: MyOrderTabletScreen(),
    );
  }
}
