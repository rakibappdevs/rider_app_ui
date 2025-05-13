import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibanking/routes/routes.dart';
import 'package:intl/intl.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/order_request_controller.dart';
part 'order_request_tablet_screen.dart';
part 'order_request_mobile_screen.dart';
part '../widget/order_request_card.dart';


class OrderRequestScreen extends GetView<OrderRequestController> {
  const OrderRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: OrderRequestMobileScreen(),
      tablet: OrderRequestTabletScreen(),
    );
  }
}
