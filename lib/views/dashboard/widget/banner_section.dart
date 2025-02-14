part of '../screen/dashboard_screen.dart';

class BannerSection extends GetView<DashboardController> {
  const BannerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          CarouselSlider(
            carouselController: controller.carouselController,
            options: CarouselOptions(
              height: MediaQuery.sizeOf(context).height * 0.2,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                controller.currentBannerIndex.value = index;
              },
            ),
            items: controller.bannerList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius * 1.5),
                      color: Colors.grey[200],
                    ),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius * 1.5),
                      child: Image.network(
                        i,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const SizedBox(height: 10),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: controller.bannerList.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () =>
                        controller.carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 8.0,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(
                            controller.currentBannerIndex.value == entry.key
                                ? 0.9
                                : 0.4),
                      ),
                    ),
                  );
                }).toList(),
              )),
        ],
      ),
    );
  }
}
