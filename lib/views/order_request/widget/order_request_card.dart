part of '../screen/order_request_screen.dart';

class OrderRequestCard extends GetView<OrderRequestController> {
  const OrderRequestCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius)),
      child: Padding(
        padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: CustomColor.whiteColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: CustomColor.secondary.withAlpha(88),
                          width: 2)),
                  padding: EdgeInsets.all(Dimensions.paddingSize * 0.3),
                  child: Icon(Icons.restaurant, color: CustomColor.primary),
                ),
                Sizes.width.v10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget('Hungry Puppets',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextWidget(
                        '2 Items',
                        color: CustomColor.primary,
                        fontSize: Dimensions.titleSmall * 0.9,
                      ),
                      TextWidget(
                        'House: 00, Road: 00, Test City',
                        color: CustomColor.secondary.withAlpha(88),
                        fontSize: Dimensions.titleSmall * 0.8,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    TextWidget(
                      '1 Years ago',
                      fontSize: Dimensions.titleSmall * 0.8,
                      color: CustomColor.secondary.withAlpha(99),
                    ),
                    Sizes.height.v5,
                    Container(
                      decoration: BoxDecoration(
                        color: CustomColor.secondary.withAlpha(55),
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius * 0.6),
                      ),
                      padding: EdgeInsets.all(Dimensions.paddingSize * 0.2),
                      child: TextWidget(
                        '\$30.60 COD',
                        fontSize: Dimensions.titleSmall * 0.9,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Dimensions.horizontalSize * 0.8,
                  bottom: Dimensions.verticalSize * 0.2,
                  top: Dimensions.verticalSize * 0.2),
              child: DashedLineVertical(height: Dimensions.widthSize * 4),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: CustomColor.whiteColor,
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: CustomColor.secondary.withAlpha(88), width: 2),
                  ),
                  padding: EdgeInsets.all(Dimensions.paddingSize * 0.3),
                  child:
                      Icon(Icons.delivery_dining, color: CustomColor.primary),
                ),
                Sizes.width.v10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(Strings.deliverTo,
                          style: TextStyle(fontWeight: FontWeight.w600)),
                      TextWidget(
                        '593 Avenue 5, Dhaka, Bangladesh',
                        color: CustomColor.secondary.withAlpha(88),
                        fontSize: Dimensions.titleSmall * 0.8,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.location_on,
                        color: CustomColor.rejected,
                        size: Dimensions.iconSizeLarge * 0.6),
                    SizedBox(width: Dimensions.widthSize * 0.2),
                    TextWidget(
                      Strings.viewMap,
                      color: CustomColor.rejected,
                      fontSize: Dimensions.titleSmall * 0.9,
                    ),
                  ],
                )
              ],
            ),
            Sizes.height.v20,
            Row(
              mainAxisAlignment: mainSpaceBet,
              children: [
                Column(
                  crossAxisAlignment: crossStart,
                  children: [
                    TextWidget(
                      Strings.restaurantIs,
                      fontSize: Dimensions.titleSmall * 0.8,
                      color: CustomColor.secondary.withAlpha(88),
                    ),
                    TextWidget(
                      '563.93 km away',
                      fontSize: Dimensions.titleSmall * 0.9,
                      color: CustomColor.secondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: mainEnd,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColor.whiteColor,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: CustomColor.secondary),
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius),
                        ),
                      ),
                      onPressed: () {
                        _bottomOrderAcceptDialog(
                          context,
                          "Ignore",
                          "Do You Ignore This Request",
                          String,
                          Strings.ignore,
                          () {
                            Get.close(1);
                          },
                        );
                      },
                      child: TextWidget(
                        Strings.ignore,
                        fontSize: Dimensions.titleSmall,
                        color: CustomColor.secondary,
                      ),
                    ),
                    Sizes.width.v10,
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColor.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius),
                        ),
                      ),
                      onPressed: () {
                        _bottomOrderAcceptDialog(
                          context,
                          Strings.accept,
                          "Accept This Order Request",
                          String,
                          Strings.accept,
                          () {
                            Get.toNamed(Routes.order_detailsScreen);
                          },
                        );
                      },
                      child: TextWidget(
                        Strings.accept,
                        fontSize: Dimensions.titleSmall,
                        color: CustomColor.whiteColor,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class DashedLineVertical extends StatelessWidget {
  final double height;
  final double dashHeight;
  final Color color;
  final double gap;

  const DashedLineVertical({
    Key? key,
    this.height = 40,
    this.dashHeight = 4,
    this.gap = 4,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dashCount =
              (constraints.maxHeight / (dashHeight + gap)).floor();
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(dashCount, (_) {
              return SizedBox(
                height: dashHeight,
                child: Container(color: color, width: 1),
              );
            }),
          );
        },
      ),
    );
  }
}

_bottomOrderAcceptDialog(
    context, String title, String sub, String, buttonText, VoidCallback onTap) {
  return showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(Dimensions.radius * 1.5),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(Dimensions.radius * 1.5)),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Dimensions.horizontalSize,
          vertical: Dimensions.verticalSize * 0.5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: Dimensions.widthSize * 4.2,
                height: Dimensions.heightSize * 0.6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                  color: Colors.black,
                ),
              ),
            ),
            Sizes.height.v20,
            TextWidget(
              title,
              typographyStyle: TypographyStyle.titleSmall,
              fontWeight: FontWeight.bold,
              padding: EdgeInsets.only(
                bottom: Dimensions.verticalSize * 0.15,
              ),
            ),
            TextWidget(
              sub,
              typographyStyle: TypographyStyle.bodyMedium,
            ),
            Sizes.height.betweenInputBox,
            PrimaryButton(
              title: Strings.cancel,
              onPressed: () {
                Get.close(1);
              },
              buttonColor: Colors.white,
              borderColor: Colors.white,
              buttonTextColor: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.6,
              ),
              child: PrimaryButton(
                title: buttonText,
                // isLoading: Get.put(LogInController()).isLoading,
                onPressed: onTap,
                buttonColor: CustomColor.primary,
                borderColor: CustomColor.primary,
              ),
            ),
          ],
        ),
      );
    },
  );
}
