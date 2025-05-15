part of 'my_order_screen.dart';

class MyOrderMobileScreen extends GetView<MyOrderController> {
  const MyOrderMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(Strings.myOrder),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimensions.defaultHorizontalSize,
            ),
            child: Column(
              children: [
                Sizes.height.v10,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(() => Row(
                        children: List.generate(
                          5,
                          (index) => GestureDetector(
                            onTap: () {
                              controller.selectedFilterIndex.value = index;
                            },
                            child: Container(
                              margin:
                                  EdgeInsets.only(right: Dimensions.widthSize),
                              padding:
                                  EdgeInsets.all(Dimensions.paddingSize * 0.3),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius),
                                color: controller.selectedFilterIndex.value ==
                                        index
                                    ? CustomColor.primary
                                    : CustomColor.secondary.withAlpha(20),
                                border: Border.all(
                                  color: controller.selectedFilterIndex.value ==
                                          index
                                      ? CustomColor.primary
                                      : CustomColor.secondary.withAlpha(20),
                                ),
                              ),
                              child: TextWidget(
                                controller.statusList[index],
                                color: controller.selectedFilterIndex.value ==
                                        index
                                    ? CustomColor.whiteColor
                                    : CustomColor.secondary.withAlpha(99),
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
                Sizes.height.v5,
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),

                    itemBuilder: (context, index) => DetailsCard(),
                  ),
                )
              ],
            )));
  }
}
