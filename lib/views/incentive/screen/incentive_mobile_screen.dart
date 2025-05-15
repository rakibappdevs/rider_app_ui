part of 'incentive_screen.dart';

class IncentiveMobileScreen extends GetView<IncentiveController> {
  const IncentiveMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(Strings.Incentive),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
        child: ListView(
          children: [
            TotalIncentiveAmountBox(),
            TextWidget(
              padding: EdgeInsets.only(bottom: Dimensions.verticalSize * .25),
              Strings.currentIncentiveOffers,
              fontWeight: FontWeight.w500,
            ),
            ...List.generate(
              4,
              (index) => GestureDetector(
                  onTap: () {
                    controller.selectedOfferCardIndex.value = index;
                  },
                  child: Obx(
                    () => Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                          bottom: Dimensions.verticalSize * 0.5),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius),
                          color: CustomColor.whiteColor,
                          border: Border.all(
                              color: controller.selectedOfferCardIndex.value ==
                                      index
                                  ? CustomColor.primary
                                  : CustomColor.whiteColor,
                              width: 2)),
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.paddingSize * 0.25),
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Column(
                          mainAxisAlignment: mainCenter,
                          crossAxisAlignment: crossStart,
                          children: [
                            TextWidget(
                              fontSize: Dimensions.titleSmall,
                              Strings.earning,
                              fontWeight: FontWeight.w500,
                            ),
                            TextWidget(
                              fontSize: Dimensions.titleSmall,
                              fontWeight: FontWeight.w500,
                              '\$ ${controller.incentiveOfferList[index]['earning'].toString()}',
                            )
                          ],
                        ),
                        trailing: Column(
                          mainAxisAlignment: mainCenter,
                          children: [
                            TextWidget(
                              Strings.incentive,
                              fontSize: Dimensions.titleSmall,
                            ),
                            TextWidget(
                              '\$ ${controller.incentiveOfferList[index]['incentive'].toString()}',
                              fontSize: Dimensions.titleSmall,
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
