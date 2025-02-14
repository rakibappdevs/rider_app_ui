part of '../screen/category_screen.dart';

class ProductCategoryCard extends GetView<CategoryController> {
  ProductCategoryCard({Key? key, required this.data, required this.index})
      : super(key: key);
  final ProductCategoryModel data;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          controller.selectCategoryIndex.value = index;
          controller.selectCategoryId.value = data.id;
        },
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: Dimensions.verticalSize * 0.05,
          ),
          padding: EdgeInsets.all(
            Dimensions.paddingSize * 0.4,
          ),
          color: controller.selectCategoryIndex.value == index
              ? CustomColor.primary
              : CustomColor.whiteColor,
          child: Column(
            children: [
              Icon(
                data.icon,
                size: 24,
                color: controller.selectCategoryIndex.value == index
                    ? CustomColor.whiteColor
                    : CustomColor.blackColor,
              ),
              const SizedBox(height: 4),
              TextWidget(
                data.label,
                color: controller.selectCategoryIndex.value == index
                    ? CustomColor.whiteColor
                    : CustomColor.blackColor,
                typographyStyle: TypographyStyle.labelSmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
