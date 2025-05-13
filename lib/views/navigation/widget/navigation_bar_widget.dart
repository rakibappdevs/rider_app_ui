import 'package:flutter/material.dart';

import '../../../base/utils/basic_import.dart';
import 'bottom_item.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CustomColor.whiteColor,
      padding: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      height: Dimensions.heightSize * 6,
      shape:  CircularNotchedRectangle(),
      notchMargin: 10,
      elevation: 5,
      shadowColor: CustomColor.blackColor.withOpacity(0.6),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.only(left: 0.5, top: Dimensions.paddingSize * 0.2),
              child: BottomItem(
                icon: Icons.home_rounded,
                label: Strings.home,
                index: 0,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: Dimensions.paddingSize * 0.2),
              child: BottomItem(
                icon: Icons.calendar_view_week_rounded,
                label: Strings.orders,
                index: 1,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: Dimensions.paddingSize * 0.2),
              child: BottomItem(
                icon: Icons.ac_unit,
                label: Strings.earnings,
                index: 2,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: Dimensions.paddingSize * 0.2,
                left: Dimensions.paddingSize * 0.5,
              ),
              child: BottomItem(
                icon: Icons.person,
                label: Strings.setting,
                index: 3,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: Dimensions.paddingSize * 0.2,
                left: Dimensions.paddingSize * 0.5,
              ),
              child: BottomItem(
                icon: Icons.outbox_rounded,
                label: Strings.orders,
                index: 4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
