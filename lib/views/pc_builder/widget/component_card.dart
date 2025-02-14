part of '../screen/pc_builder_screen.dart';

class ComponentCard extends StatelessWidget {
  const ComponentCard({super.key, required this.item});
  final ComponentItem item;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(
        bottom: Dimensions.spaceBetweenInputTitleAndBox,
      ),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.paddingSize * 0.6),
              decoration: BoxDecoration(
                color: CustomColor.background,
                borderRadius: BorderRadius.circular(Dimensions.radius),
              ),
              child: Icon(
                item.icon,
                color: CustomColor.primary,
                size: Dimensions.iconSizeLarge,
              ),
            ),
            Sizes.width.v10,
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextWidget(
                          item.name,
                          typographyStyle: TypographyStyle.titleSmall,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      if (item.required)
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 8),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              Strings.required,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Sizes.height.v15,
                  Container(
                    height: Dimensions.heightSize,
                    decoration: BoxDecoration(
                      color: CustomColor.background,
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius * 0.2),
                    ),
                  ),
                ],
              ),
            ),
            Sizes.width.v10,
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: CustomColor.primary),
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.5),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: Dimensions.horizontalSize * 0.45,
                vertical: Dimensions.verticalSize * 0.25,
              ),
              child: TextWidget(
                Strings.choose,
                typographyStyle: TypographyStyle.labelMedium,
                color: CustomColor.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
