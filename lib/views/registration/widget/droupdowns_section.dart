part of '../screen/registration_screen.dart';

class DroupdownsSection extends GetView<RegistrationController> {
  const DroupdownsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sizes.height.betweenInputBox,
        Row(
          children: [
            Expanded(
              child: CustomDropDown(
                  itemsList: controller.items,
                  selectMethod: controller.selectedDeliveryType),
            ),
            Sizes.width.v10,
            Expanded(
              child: CustomDropDown(
                  itemsList: controller.items,
                  selectMethod: controller.allOverTheWorld),
            ),
          ],
        ),
        Sizes.height.betweenInputBox,
        CustomDropDown(
            itemsList: controller.items,
            selectMethod: controller.selectVehicle),
        Sizes.height.betweenInputBox,
        CustomDropDown(
            itemsList: controller.items, selectMethod: controller.passport),
      ],
    );
  }
}
