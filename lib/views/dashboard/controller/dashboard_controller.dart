import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final carouselController = CarouselSliderController();

  final RxInt currentBannerIndex = 0.obs;

  final List<String> bannerList = [
    'https://ruddra.appdevs.team/adtech/assets/images/banner/banner-1.png',
    'https://ruddra.appdevs.team/adtech/assets/images/banner/banner-2.webp',
  ];

  bool showAllCategories = false;
  bool isAnimating = false;

  Future<void> toggleShowAllCategories() async {
    if (isAnimating) return;

    isAnimating = true;
    showAllCategories = !showAllCategories;
    update();

    // Wait for animation to complete
    await Future.delayed(const Duration(milliseconds: 500));
    isAnimating = false;
  }
}
