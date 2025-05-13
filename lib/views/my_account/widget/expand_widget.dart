import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../base/themes/token.dart';
import '../../../base/utils/dimensions.dart';
import '../../../base/utils/size.dart';
import '../../../base/widgets/text_widget.dart';
import '../controller/my_account_controller.dart';

class ExpandedCardInfo extends GetView<MyAccountController> {
  final int index;

  const ExpandedCardInfo(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _moreInfoShow(index),
        ],
      ),
    );
  }

  _moreInfoShow(int index) {
    final info = controller.historyList[index];
    return Container(
      decoration: BoxDecoration(
        color: CustomColor.whiteColor,
        borderRadius: BorderRadius.circular(Dimensions.radius * 0.8),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.defaultHorizontalSize * 2,
        vertical: Dimensions.verticalSize * 0.2,
      ),
      child: Column(
        children: [
          // _previewHistoryCard(Strings.PickUpLocation, info.location),
          // _previewHistoryCard(Strings.destination, info.destination),
          // _previewHistoryCard(
          //   Strings.PickUpdate,
          //   info.pickupDate.toString().substring(0, 11),
          // ),
          // _previewHistoryCard(Strings.PickUpTime, info.pickupTime),
          // _previewHistoryCard(Strings.totalAmount,
          //     "${info.amount} ${BasicServices.baseCurCode}"),
          // _previewHistoryCard(
          //   Strings.status,
          //   info.status == 1
          //       ? Strings.pending
          //       : info.status == 2
          //       ? Strings.ongoing
          //       : info.status == 3
          //       ? Strings.complete
          //       : Strings.reject,
          // ),
        ],
      ),
    );
  }

  _previewHistoryCard(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.25),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          TextWidget(
            title,
            fontSize: Dimensions.titleSmall,
          ),
          TextWidget(
            value,
            fontWeight: FontWeight.w500,
            color: CustomColor.primary,
            fontSize: Dimensions.titleSmall,
          ),
        ],
      ),
    );
  }
}
