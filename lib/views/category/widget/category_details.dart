part of '../screen/category_screen.dart';

class CategoryDetails extends GetView<CategoryController> {
  const CategoryDetails({
    Key? key,
    required this.data,
    required this.index,
  }) : super(key: key);
  final Brand data;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.horizontalSize * 0.5,
      ),
      child: Column(
        mainAxisSize: mainMin,
        children: [
          ExpansionTile(
            dense: true,
            tilePadding: EdgeInsets.zero,
            childrenPadding: EdgeInsets.zero,
            title: TextWidget(
              data.label,
              typographyStyle: TypographyStyle.titleMedium,
            ),

            trailing: Icon(Icons.add),
            // trailing: Icon(expanded ? Icons.remove : Icons.add),
            onExpansionChanged: (v) {},
            children: [
              Column(
                mainAxisSize: mainMin,
                children: [
                  Flexible(
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 1,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisSize: mainMin,
                          children: [
                            Container(
                              padding: EdgeInsets.all(
                                Dimensions.paddingSize * 0.3,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: CustomColor.primary,
                                ),
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius),
                              ),
                              child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/6/64/Intel-logo-2022.png',
                                height:
                                    MediaQuery.sizeOf(context).height * 0.03,
                                width: MediaQuery.sizeOf(context).width * 0.1,
                              ),
                            ),
                            TextWidget(
                              'Intel',
                              typographyStyle: TypographyStyle.titleMedium,
                              padding: EdgeInsets.only(
                                top: Dimensions.verticalSize * 0.13,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            height: 1.5,
            color: CustomColor.disableColor.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
