part of '../screen/dashboard_screen.dart';

class FeaturedCategory extends StatelessWidget {
  const FeaturedCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) {
        final displayedCategories = controller.showAllCategories
            ? categories
            : categories.take(8).toList();

        return SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.defaultHorizontalSize,
            ),
            child: Column(
              crossAxisAlignment: crossCenter,
              children: [
                Sizes.height.v10,
                TextWidget(
                  Strings.featuredCategory,
                  typographyStyle: TypographyStyle.titleMedium,
                  fontWeight: FontWeight.w600,
                ),
                Sizes.height.v5,
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.horizontalSize,
                  ),
                  child: TextWidget(
                    Strings.enableYourBusiness,
                    typographyStyle: TypographyStyle.labelSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
                Sizes.height.v10,
                Card(
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius * 1.5),
                  ),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.paddingSize * 0.1,
                      vertical: Dimensions.paddingSize * 0.5,
                    ),
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        childAspectRatio: 0.85,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: displayedCategories.length,
                      itemBuilder: (context, index) {
                        return AnimatedScale(
                          duration: Duration(milliseconds: 200 + (index * 50)),
                          scale: controller.showAllCategories ? 1.0 : 1.0,
                          child: CategoryItem(
                            icon: displayedCategories[index].icon,
                            title: displayedCategories[index].title,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                if (categories.length > 8)
                  AnimatedSlide(
                    duration: const Duration(milliseconds: 300),
                    offset: const Offset(0, 0),
                    child: Center(
                      child: TextButton(
                        onPressed: () => controller.toggleShowAllCategories(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(controller.showAllCategories
                                ? Strings.showLess
                                : Strings.showMore),
                            const SizedBox(width: 4),
                            AnimatedRotation(
                              duration: const Duration(milliseconds: 300),
                              turns: controller.showAllCategories ? 0.5 : 0,
                              child: const Icon(
                                Icons.keyboard_arrow_down,
                                size: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const CategoryItem({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            size: 24,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

// Category Data Model
class Category {
  final IconData icon;
  final String title;

  Category({required this.icon, required this.title});
}

// Category List
final List<Category> categories = [
  Category(icon: Icons.airplanemode_active, title: 'Drone'),
  Category(icon: Icons.camera, title: 'Gimbal'),
  Category(icon: Icons.battery_charging_full, title: 'Battery'),
  Category(icon: Icons.tv, title: 'TV'),
  Category(icon: Icons.phone_android, title: 'Mobile'),
  Category(icon: Icons.power, title: 'Portable Power Station'),
  Category(icon: Icons.vrpano, title: 'VR (Virtual Reality)'),
  Category(icon: Icons.watch, title: 'Smart Watch'),
  Category(icon: Icons.videocam, title: 'Action Camera'),
  Category(icon: Icons.memory, title: 'Graphics Card'),
  Category(icon: Icons.print, title: 'Printer'),
  Category(icon: Icons.headphones, title: 'Headphone'),
];
