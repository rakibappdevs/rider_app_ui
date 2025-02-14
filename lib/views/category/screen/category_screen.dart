import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../base/utils/basic_import.dart';
import '../controller/category_controller.dart';
import '../model /product_category_model.dart';

part '../widget/product_category_card.dart';
part 'category_mobile_screen.dart';
part 'category_tablet_screen.dart';
part '../widget/category_details.dart';

class CategoryScreen extends GetView<CategoryController> {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CategoryMobileScreen(),
      tablet: CategoryTabletScreen(),
    );
  }
}
