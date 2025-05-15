import 'package:get/get.dart';
import 'package:ibanking/bindings/navigation_binding.dart';
import 'package:ibanking/bindings/splash_binding.dart';
import 'package:ibanking/views/navigation/screen/navigation_screen.dart';
import 'package:ibanking/views/registration/screen/ragistration_screen.dart';
import 'package:ibanking/views/splash/screen/splash_screen.dart';

import '../bindings/cart_binding.dart';
import '../bindings/category_binding.dart';
import '../bindings/forgot_password_binding.dart';
import '../bindings/login_binding.dart';
import '../bindings/my_account_binding.dart';
import '../bindings/my_order_binding.dart';
import '../bindings/order_details_binding.dart';
import '../bindings/order_request_binding.dart';
import '../bindings/otp_verification_binding.dart';
import '../bindings/pc_builder_binding.dart';
import '../bindings/profile_binding.dart';
import '../bindings/registration_binding.dart';
import '../bindings/register_binding.dart';
import '../views/cart/screen/cart_screen.dart';
import '../views/category/screen/category_screen.dart';
import '../views/forgot_password/screen/forgot_password_screen.dart';
import '../views/login/screen/login_screen.dart';
import '../views/my_account/screen/my_account_screen.dart';
import '../views/my_order/screen/my_order_screen.dart';
import '../views/onboard/screen/onboard_screen.dart';
import '../views/order_details/screen/order_details_screen.dart';
import '../views/order_request/screen/order_request_screen.dart';
import '../views/otp_verification/screen/otp_verification_screen.dart';
import '../views/pc_builder/screen/pc_builder_screen.dart';
import '../views/profile/screen/profile_screen.dart';
import '../views/register/screen/register_screen.dart';

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
  static const String my_orderScreen = '/my_orderScreen';
  static const String profileScreen = '/profileScreen';
  static const String my_accountScreen = '/my_accountScreen';
  static const String order_detailsScreen = '/order_detailsScreen';
  static const String loginScreen = '/loginScreen';
  static const String registerScreen = '/registerScreen';
  static const String forgot_passwordScreen = '/forgot_passwordScreen';
  static const String otp_verificationScreen = '/otp_verificationScreen';
  static const String ragistrationScreen = '/registrationScreen';
}
