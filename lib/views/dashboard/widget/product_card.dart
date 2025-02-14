part of '../screen/dashboard_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.radius * 1.3),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          Dimensions.paddingSize * 0.4,
        ),
        child: Column(
          crossAxisAlignment: crossStart,
          mainAxisSize: mainMin,
          children: [
            Container(
              height: MediaQuery.sizeOf(context).height * 0.1,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(Dimensions.radius * 1.2),
              ),
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              ),
            ),
            Sizes.height.v10,
            TextWidget(
              product.category,
              typographyStyle: TypographyStyle.bodySmall,
              fontWeight: FontWeight.w700,
            ),
            TextWidget(
              product.title,
              maxLines: 2,
              textOverflow: TextOverflow.ellipsis,
              typographyStyle: TypographyStyle.labelSmall,
            ),
            Sizes.height.v5,
            TextWidget(
              'TK ${product.price}',
              typographyStyle: TypographyStyle.labelMedium,
              fontWeight: FontWeight.w500,
            ),
            _buttonWidget()
          ],
        ),
      ),
    );
  }

  _buttonWidget() {
    return FittedBox(
      child: Row(
        crossAxisAlignment: crossCenter,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: Dimensions.verticalSize * 0.2,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              color: CustomColor.primary.withOpacity(0.08),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.horizontalSize,
              vertical: Dimensions.verticalSize * 0.23,
            ),
            child: TextWidget(
              Strings.buyNow,
              typographyStyle: TypographyStyle.labelSmall,
              color: CustomColor.primary,
            ),
          ),
          Sizes.width.add(Dimensions.widthSize * 0.7),
          Container(
            margin: EdgeInsets.only(
              top: Dimensions.heightSize * 0.4,
            ),
            padding: EdgeInsets.all(Dimensions.paddingSize * 0.25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius * 0.45),
              color: CustomColor.background,
            ),
            child: SvgPicture.asset(
              Assets.icons.compare,
              height: Dimensions.iconSizeDefault * 0.8,
            ),
          )
        ],
      ),
    );
  }
}
