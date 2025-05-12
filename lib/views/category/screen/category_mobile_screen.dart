part of 'category_screen.dart';

class CategoryMobileScreen extends GetView<CategoryController> {
  const CategoryMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
    );
  }

   _bodyWidget(BuildContext context) {
    return SafeArea(
      child: ListView(children: [

      ],)
    );
  }
}
