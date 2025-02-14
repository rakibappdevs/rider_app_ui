part of 'category_screen.dart';

class CategoryMobileScreen extends GetView<CategoryController> {
  const CategoryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        'Categories',
      ),
      body: _bodyWidget(context),
    );
  }

  Widget _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          // Left sidebar with icons
          Container(
            width: MediaQuery.sizeOf(context).width * 0.25,
            child: ListView.builder(
              itemCount: controller.products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCategoryCard(
                  data: controller.products[index],
                  index: index,
                );
              },
            ),
          ),
          // Main content area
          Expanded(
            child: ListView.builder(
              itemCount: controller.products
                  .where((v) => v.id == controller.selectCategoryId.value)
                  .first
                  .productDetails
                  .brands
                  .length,
              itemBuilder: (BuildContext context, int index) {
                return CategoryDetails(
                  data: controller.products
                      .where((v) => v.id == controller.selectCategoryId.value)
                      .first
                      .productDetails
                      .brands[index],
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
