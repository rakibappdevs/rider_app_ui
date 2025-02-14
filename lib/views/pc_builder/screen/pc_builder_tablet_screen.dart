part of 'pc_builder_screen.dart';

class PcBuilderTabletScreen extends GetView<PcBuilderController> {
  const PcBuilderTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('PcBuilder Tablet Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
