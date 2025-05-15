part of '../screen/dashboard_screen.dart';

class ActiveOrderWidget extends GetView<DashboardController> {
  const ActiveOrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsets.only(
              top: Dimensions.paddingSize * 0.3,
              bottom: Dimensions.verticalSize * 0.4),
          Strings.activeOrder,
          fontSize: Dimensions.titleSmall,
          fontWeight: FontWeight.bold,
        ),
        Container(
          decoration: BoxDecoration(
            color: CustomColor.whiteColor,
            borderRadius: BorderRadius.circular(Dimensions.radius),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 6,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: crossStart,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.defaultHorizontalSize * 0.4),
                height: 50,
                decoration: BoxDecoration(
                    color: CustomColor.secondary.withAlpha(15),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius),
                      topLeft: Radius.circular(Dimensions.radius),
                    )),
                child: Row(
                  mainAxisAlignment: mainSpaceBet,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: Strings.ord,
                          style: TextStyle(
                            fontSize: Dimensions.titleSmall,
                            color: CustomColor.blackColor,
                          ),
                          children: [
                            TextSpan(
                              text: '100109 ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimensions.titleSmall,
                              ),
                            ),
                            TextSpan(
                              text: ' (1 Item)',
                              style: TextStyle(
                                fontSize: Dimensions.titleSmall * 0.7,
                                color: CustomColor.secondary.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSize * 0.6,
                          vertical: Dimensions.paddingSize * 0.2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.1),
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius * 0.6),
                        ),
                        child: TextWidget(
                          'Unpaid',
                          fontSize: Dimensions.titleSmall * 0.9,
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
              Sizes.height.v10,
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.defaultHorizontalSize * 0.4),
                child: Row(
                  mainAxisAlignment: mainSpaceBet,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.store,
                          color: Colors.grey,
                          size: Dimensions.iconSizeSmall * 1.5,
                        ),
                        Sizes.width.v5,
                        TextWidget(
                          'Hungry Puppets',
                          fontWeight: FontWeight.w600,
                          fontSize: Dimensions.titleSmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Sizes.height.v5,
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.defaultHorizontalSize * 0.4),
                child: Row(
                  mainAxisAlignment: mainSpaceBet,
                  children: [
                    Wrap(
                      children: [
                        Icon(
                          Icons.add_location_alt_sharp,
                          size: Dimensions.iconSizeSmall * 1.5,
                          color: Colors.grey,
                        ),
                        TextWidget(
                          padding: EdgeInsets.only(
                              left: Dimensions.defaultHorizontalSize * 0.2),
                          'House: 00, Road:00, Test City',
                          fontSize: Dimensions.titleSmall * 0.85,
                          color: CustomColor.secondary.withAlpha(88),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.directions,
                          color: CustomColor.primary,
                          size: Dimensions.iconSizeSmall * 1.5,
                        ),
                        TextWidget(
                          padding: EdgeInsets.only(
                              left: Dimensions.heightSize * 0.25),
                          "Direction",
                          color: CustomColor.primary,
                          fontSize: Dimensions.titleSmall,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Center(
                  child: TextWidget(
                onTap: () {
                  Get.toNamed(Routes.order_detailsScreen);
                },
                padding: EdgeInsets.only(
                    top: Dimensions.verticalSize * 0.2,
                    bottom: Dimensions.verticalSize * 0.3),
                'Details',
                color: CustomColor.primary,
                fontSize: Dimensions.titleSmall,
              ))
            ],
          ),
        ),
      ],
    );
  }
}
