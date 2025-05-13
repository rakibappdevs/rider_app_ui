import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ibanking/assets/assets.dart';
import 'package:ibanking/routes/routes.dart';
import 'package:ibanking/views/my_order/screen/my_order_screen.dart';

import '../../../base/utils/basic_import.dart';
import '../controller/dashboard_controller.dart';
import '../model/product_model.dart';

part '../widget/balance_box.dart';
part '../widget/featured_category.dart';
part '../widget/order_card.dart';
part '../widget/search_bar.dart';
part 'dashboard_mobile_screen.dart';
part 'dashboard_tablet_screen.dart';
part '../widget/switch_button_widget.dart';
part '../widget/my_app_bar_widget.dart';
part '../widget/pay_now_widget_box.dart';
part '../widget/active_order_widget.dart';



class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: DashboardMobileScreen(),
      tablet: DashboardTabletScreen(),
    );
  }
}

