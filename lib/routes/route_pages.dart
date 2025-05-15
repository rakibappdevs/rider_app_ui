part of '../routes/routes.dart';

class RoutePageList {
  static var list = [
    GetPage(
      name: Routes.edit_profileScreen,
      page: () => const EditProfileScreen(),
      binding: EditProfileBinding(),
    ),
    
    GetPage(
      name: Routes.incentiveScreen,
      page: () => const IncentiveScreen(),
      binding: IncentiveBinding(),
    ),
    
    GetPage(
      name: Routes.ragistrationScreen,
      page: () => RegistrationScreen(),
      binding: RegistrationBinding(),
    ),
    
    GetPage(
      name: Routes.otp_verificationScreen,
      page: () => const OtpVerificationScreen(),
      binding: OtpVerificationBinding(),
    ),
    
    GetPage(
      name: Routes.forgot_passwordScreen,
      page: () => const ForgotPasswordScreen(),
      binding: ForgotPasswordBinding(),
    ),
    
    GetPage(
      name: Routes.registerScreen,
      page: () => const RegisterScreen(),
      binding: RegisterBinding(),
    ),
    
    GetPage(
      name: Routes.loginScreen,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    
    GetPage(
      name: Routes.order_detailsScreen,
      page: () => const OrderDetailsScreen(),
      binding: OrderDetailsBinding(),
    ),
    
    GetPage(
      name: Routes.my_accountScreen,
      page: () => const MyAccountScreen(),
      binding: MyAccountBinding(),
    ),
    
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
