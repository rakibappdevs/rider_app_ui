part of '../screen/order_details_screen.dart';

class ItemInfoCard extends GetView<OrderDetailsController> {
  const ItemInfoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Card(
      elevation: 0,
      margin: EdgeInsets.only(
        left: Dimensions.defaultHorizontalSize,
        right: Dimensions.defaultHorizontalSize,
        top: Dimensions.verticalSize * 0.67,
      ),
      color: Colors.pink,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.radius),
      ),
      child: Padding(
        padding: EdgeInsets.all(
          Dimensions.paddingSize * 0.42,
        ),
        child: Column(
          crossAxisAlignment: crossStart,
          children: [
            TextWidget(
              'ItemInfoCard Widget',
              typographyStyle: TypographyStyle.titleLarge,
              color: CustomColor.whiteColor,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
    
  
  }
}
