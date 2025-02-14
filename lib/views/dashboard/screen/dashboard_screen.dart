import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ibanking/assets/assets.dart';

import '../../../base/utils/basic_import.dart';
import '../controller/dashboard_controller.dart';
import '../model/product_model.dart';

part '../widget/banner_section.dart';
part '../widget/featured_category.dart';
part '../widget/featured_products.dart';
part '../widget/product_card.dart';
part '../widget/search_bar.dart';
part 'dashboard_mobile_screen.dart';
part 'dashboard_tablet_screen.dart';

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
