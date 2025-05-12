import 'package:get/get.dart';
import 'package:ibanking/bindings/navigation_binding.dart';
import 'package:ibanking/bindings/splash_binding.dart';
import 'package:ibanking/views/navigation/screen/navigation_screen.dart';
import 'package:ibanking/views/splash/screen/splash_screen.dart';

import '../bindings/cart_binding.dart';
import '../bindings/category_binding.dart';
import '../bindings/order_request_binding.dart';
import '../bindings/pc_builder_binding.dart';
import '../views/cart/screen/cart_screen.dart';
import '../views/category/screen/category_screen.dart';
import '../views/onboard/screen/onboard_screen.dart';
import '../views/order_request/screen/order_request_screen.dart';
import '../views/pc_builder/screen/pc_builder_screen.dart';

part '../routes/route_pages.dart';

class Routes {
  // Page List
  static var list = RoutePageList.list;

  // Route Names
  static const String splashScreen = '/splashScreen';
  static const String onboardScreen = '/onboardScreen';
  static const String navigation = '/navigation';
  static const String pcBuilderScreen = '/pc_builderScreen';
  static const String pc_builderScreen = '/pc_builderScreen';
  static const String categoryScreen = '/categoryScreen';
  static const String cartScreen = '/cartScreen';
  static const String newScreen = '/newScreen';
  static const String order_requestScreen = '/order_requestScreen';
}
