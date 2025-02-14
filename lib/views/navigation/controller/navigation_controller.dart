import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../cart/screen/cart_screen.dart';
import '../../category/screen/category_screen.dart';
import '../../dashboard/screen/dashboard_screen.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> bodyPages = [
    DashboardScreen(),
    CategoryScreen(),
    CartScreen(),
    Container(color: Colors.blue),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
