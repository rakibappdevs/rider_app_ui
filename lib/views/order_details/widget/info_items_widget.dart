part of '../screen/order_details_screen.dart';

class InfoItemsWidget extends GetView<OrderDetailsController> {
  const InfoItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.background,
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize * 0.8,
          vertical: Dimensions.verticalSize * 0.25),      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(
            Strings.itemInfo,
            fontSize: Dimensions.titleSmall * 0.95,
            fontWeight: FontWeight.bold,
          ),
          ListTile(

            contentPadding: EdgeInsets.zero,
            leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius)),
              child: Image.network(
                'https://static.vecteezy.com/system/resources/thumbnails/004/141/669/small/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg',
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            title: Column(
              crossAxisAlignment: crossStart,
              children: [
                TextWidget(
                  'Hungry Pur',
                  fontWeight: FontWeight.w500,
                  fontSize: Dimensions.titleSmall,
                ),
                TextWidget(
                  'R9HC+GHV, Dhaka 1216 band',
                  color: CustomColor.secondary.withAlpha(88),
                  fontSize: Dimensions.titleSmall * 0.8,
                ),
              ],
            ),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextWidget(
                  Strings.quantity,
                  fontSize: Dimensions.titleSmall,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
