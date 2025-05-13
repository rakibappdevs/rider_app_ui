part of '../screen/order_details_screen.dart';

class DetailsCard extends GetView<OrderDetailsController> {
  const DetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.background,
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize * 0.8,
          vertical: Dimensions.verticalSize * 0.25),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(
            Strings.customerContactDetails,
            fontSize: Dimensions.titleSmall * 0.95,
            fontWeight: FontWeight.bold,
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: CircleAvatar(
              radius: 25, // You can adjust this radius
              backgroundColor: Colors.grey.shade200,
              child: ClipOval(
                child: Image.network(
                  'https://static.vecteezy.com/system/resources/thumbnails/004/141/669/small/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg',
                  width: 50,
                  // Match diameter of CircleAvatar (2 x radius)
                  height: 50,
                  fit: BoxFit.cover,
                ),
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
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: CustomColor.primary, shape: BoxShape.circle),
                  padding: EdgeInsets.all(Dimensions.paddingSize * 0.1),
                  child: Icon(
                    Icons.chat_rounded,
                    size: Dimensions.iconSizeSmall * 1.6,
                    color: CustomColor.whiteColor,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Dimensions.defaultHorizontalSize * 0.5),
                  decoration:
                      BoxDecoration(color: Colors.teal, shape: BoxShape.circle),
                  padding: EdgeInsets.all(Dimensions.paddingSize * 0.1),
                  child: Icon(
                    Icons.phone_in_talk_outlined,
                    size: Dimensions.iconSizeSmall * 1.6,
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: CustomColor.primary, shape: BoxShape.circle),
                  padding: EdgeInsets.all(Dimensions.paddingSize * 0.1),
                  child: Icon(
                    Icons.location_pin,
                    size: Dimensions.iconSizeSmall * 1.6,
                    color: CustomColor.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
