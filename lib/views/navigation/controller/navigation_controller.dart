import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibanking/views/my_order/screen/my_order_screen.dart';
import 'package:ibanking/views/order_request/screen/order_request_screen.dart';

import '../../cart/screen/cart_screen.dart';
import '../../category/screen/category_screen.dart';
import '../../dashboard/screen/dashboard_screen.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> bodyPages = [
    DashboardScreen(),
    OrderRequestScreen(),
    MyOrderScreen(),
    Container(color: Colors.blue),
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
