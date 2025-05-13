part of '../screen/my_account_screen.dart';

class HistoryCardWidget extends GetView<MyAccountController> {
  final int index;

  const HistoryCardWidget(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    return Card(
      elevation: 0,
      child: Column(
        children: [
          ListTile(
            title: TextWidget(
              'Withdraw Money',
              typographyStyle: TypographyStyle.titleMedium,
            ),
            subtitle: Row(
              children: [
                CircleAvatar(
                    radius: Dimensions.radius * 0.3,
                    backgroundColor: CustomColor.primary),
                Sizes.width.v5,
                TextWidget(
                  Strings.pending,
                  color: CustomColor.secondary.withAlpha(88),
                  typographyStyle: TypographyStyle.labelMedium,
                ),
              ],
            ),
            trailing: TextWidget(
              '\$100 USD',
              typographyStyle: TypographyStyle.bodySmall,
              color: CustomColor.primary,
              fontWeight: FontWeight.w700,
            ),
            onTap: () => controller.toggleCardExpansion(index),
          ),
        ],
      ),
    );
  }
}
