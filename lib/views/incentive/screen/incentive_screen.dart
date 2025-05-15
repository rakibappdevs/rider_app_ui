import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/incentive_controller.dart';
part 'incentive_tablet_screen.dart';
part 'incentive_mobile_screen.dart';

class IncentiveScreen extends GetView<IncentiveController> {
  const IncentiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: IncentiveMobileScreen(),
      tablet: IncentiveTabletScreen(),
    );
  }
}
