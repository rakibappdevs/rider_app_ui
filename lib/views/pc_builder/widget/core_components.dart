part of '../screen/pc_builder_screen.dart';

class CoreComponents extends GetView<PcBuilderController> {
  const CoreComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildComponentSection(),
      ],
    );
  }

  Widget _buildComponentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
          dense: true,
          enabled: true,
          tilePadding: EdgeInsets.zero,
          iconColor: CustomColor.primary,
          title: TextWidget(
            Strings.coreComponents,
            typographyStyle: TypographyStyle.bodyMedium,
            fontWeight: FontWeight.w600,
            colorShade: ColorShade.mediumForty,
          ),
          children: [
            ...controller.coreComponents
                .map((item) => ComponentCard(item: item))
                .toList(),
          ],
        ),
      ],
    );
  }
}
