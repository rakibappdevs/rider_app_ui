part of '../routes/routes.dart';

class RoutePageList {
  static var list = [
    GetPage(
      name: Routes.profileScreen,
      page: () => const ProfileScreen(),
      binding: ProfileBinding(),
    ),
    
    GetPage(
      name: Routes.my_orderScreen,
      page: () => const MyOrderScreen(),
      binding: MyOrderBinding(),
    ),
    
    GetPage(
      name: Routes.order_requestScreen,
      page: () => const OrderRequestScreen(),
      binding: OrderRequestBinding(),
    ),
    
    
    GetPage(
      name: Routes.cartScreen,
      page: () => const CartScreen(),
      binding: CartBinding(),
    ),
    GetPage(
      name: Routes.categoryScreen,
      page: () => const CategoryScreen(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: Routes.pc_builderScreen,
      page: () => const PcBuilderScreen(),
      binding: PcBuilderBinding(),
    ),
    GetPage(
      name: Routes.pcBuilderScreen,
      page: () => const PcBuilderScreen(),
      binding: PcBuilderBinding(),
    ),
    GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.onboardScreen,
      page: () => OnboardScreen(),
    ),
    GetPage(
      name: Routes.navigation,
      page: () => NavigationScreen(),
      binding: NavigationBinding(),
    ),
  ];
}
