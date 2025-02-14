import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../base/utils/basic_import.dart';
import '../controller/pc_builder_controller.dart';
import '../model/component.dart';

part '../widget/component_card.dart';
part '../widget/core_components.dart';
part '../widget/pc_builder_menu.dart';
part '../widget/pc_builder_top_bar.dart';
part '../widget/peripherals.dart';
part 'pc_builder_mobile_screen.dart';
part 'pc_builder_tablet_screen.dart';

class PcBuilderScreen extends GetView<PcBuilderController> {
  const PcBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: PcBuilderMobileScreen(),
      tablet: PcBuilderTabletScreen(),
    );
  }
}
