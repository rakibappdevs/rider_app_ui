part of '../screen/dashboard_screen.dart';

class OrderCard extends StatelessWidget {
  OrderCard({Key? key}) : super(key: key);

  final List<Map<String, String>> data = [
    {
      'name': Strings.todayOrder,
      'value': '0',
    },
    {
      'name': Strings.thisWeekOrder,
      'value': '0',
    },
    {
      'name': Strings.totalOrders,
      'value': '0',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final double cardWidth =
        (MediaQuery.of(context).size.width - Dimensions.widthSize * 2) / 3;

    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          Strings.orders,
          fontWeight: FontWeight.bold,
          fontSize: Dimensions.titleSmall,
          padding: EdgeInsets.symmetric(
            vertical: Dimensions.verticalSize * 0.4,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            data.length,
                (index) => SizedBox(
              width: cardWidth * 0.9,
              child: Container(
                padding: EdgeInsets.all(Dimensions.paddingSize * 0.6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                  color: CustomColor.whiteColor,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextWidget(
                      data[index]['value']!,
                      fontSize: Dimensions.titleSmall * 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                    Sizes.height.v5,
                    TextWidget(
                      data[index]['name']!,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      fontSize: Dimensions.titleSmall * 0.9,
                      color: CustomColor.blackColor.withAlpha(88),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
