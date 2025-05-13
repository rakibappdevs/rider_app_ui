import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/order_details_controller.dart';

part 'order_details_tablet_screen.dart';
part 'order_details_mobile_screen.dart';

part '../widget/details_card.dart';

part '../widget/item_info_card.dart';
part '../widget/info_items_widget.dart';


class OrderDetailsScreen extends GetView<OrderDetailsController> {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: OrderDetailsMobileScreen(),
      tablet: OrderDetailsTabletScreen(),
    );
  }
}
