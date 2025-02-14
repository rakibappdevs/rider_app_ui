import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ibanking/base/utils/basic_import.dart';

import '../../../routes/routes.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(Routes.pcBuilderScreen);
      },
      child: Card(
        elevation: 5,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.radius * 3),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.horizontalSize,
            vertical: Dimensions.verticalSize * 0.3,
          ),
          child: Row(
            mainAxisSize: mainMin,
            children: [
              InkWell(
                onTap: () {
                  print('done');
                  Get.toNamed(Routes.pcBuilderScreen);
                },
                child: TextWidget(
                  Strings.pcBuilder,
                  typographyStyle: TypographyStyle.labelMedium,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: Dimensions.horizontalSize * 0.45,
                ),
                height: Dimensions.heightSize,
                width: 1,
                color: CustomColor.blackColor,
              ),
              TextWidget(
                Strings.laptopFinder,
                typographyStyle: TypographyStyle.labelMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
