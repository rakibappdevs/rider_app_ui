part of '../screen/profile_screen.dart';

class NameTime extends GetView<ProfileController> {
  const NameTime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.085,
        ),
        TextWidget('Jhon Doe', fontWeight: FontWeight.w500),
        Wrap(
          children: [
            TextWidget(
              Strings.shift,
              fontSize: Dimensions.titleSmall,
              fontWeight: FontWeight.w500,
            ),
            TextWidget(Strings.morning,
                color: CustomColor.primary,
                fontSize: Dimensions.titleSmall,
                fontWeight: FontWeight.w500),
          ],
        ),
      ],
    );
  }
}
