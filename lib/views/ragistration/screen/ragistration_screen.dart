import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/ragistration_controller.dart';
part 'ragistration_tablet_screen.dart';
part 'ragistration_mobile_screen.dart';

class RagistrationScreen extends GetView<RagistrationController> {
  const RagistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RagistrationMobileScreen(),
      tablet: RagistrationTabletScreen(),
    );
  }
}
