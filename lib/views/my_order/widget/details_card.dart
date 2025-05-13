part of '../screen/my_order_screen.dart';

class DetailsCard extends GetView<MyOrderController> {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsets.only(
              top: Dimensions.paddingSize * 0.5,
              bottom: Dimensions.verticalSize * 0.2),
          "01 Jun 2023",
          fontSize: Dimensions.titleSmall,
          color: CustomColor.secondary.withOpacity(0.7),
        ),
        Container(
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.8),
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
              // Order info row
              Row(
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
                            text: '100109',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Dimensions.titleSmall,
                            ),
                          ),
                          TextSpan(
                            text: ' (1 Item)',
                            style: TextStyle(
                              fontSize: Dimensions.titleSmall,
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
                      vertical: Dimensions.paddingSize * 0.3,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1),
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius * 0.6),
                    ),
                    child: TextWidget(
                      'Delivered',
                      fontSize: Dimensions.titleSmall * 0.9,
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              Sizes.height.v10,

              // Store and time row
              Row(
                mainAxisAlignment: mainSpaceBet,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.store,
                        color: CustomColor.secondary,
                        size: Dimensions.iconSizeSmall,
                      ),
                      Sizes.width.v5,
                      TextWidget(
                        'Hungry Puppets',
                        fontWeight: FontWeight.w600,
                        fontSize: Dimensions.titleSmall,
                      ),
                    ],
                  ),
                  TextWidget(
                    '10:15 AM',
                    fontSize: Dimensions.titleSmall,
                    color: CustomColor.secondary.withOpacity(0.7),
                  ),
                ],
              ),

              Sizes.height.v5,

              // Delivery type
              TextWidget(
                'Home Delivery',
                fontSize: Dimensions.titleSmall,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
