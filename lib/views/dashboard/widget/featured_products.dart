part of '../screen/dashboard_screen.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
        ),
        child: Column(
          crossAxisAlignment: crossCenter,
          mainAxisSize: mainMin,
          children: [
            TextWidget(
              Strings.featuredProducts,
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
            GridView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index]);
              },
            ),
            Sizes.height.v15,
          ],
        ),
      ),
    );
  }
}
