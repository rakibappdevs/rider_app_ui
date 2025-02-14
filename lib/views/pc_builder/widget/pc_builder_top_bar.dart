part of '../screen/pc_builder_screen.dart';

class PcBuilderTopBar extends StatelessWidget {
  const PcBuilderTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     // IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
    //     // IconButton(icon: const Icon(Icons.save), onPressed: () {}),
    //     // IconButton(icon: const Icon(Icons.print), onPressed: () {}),
    //     // IconButton(icon: const Icon(Icons.screenshot), onPressed: () {}),
    //     // ElevatedButton(
    //     //   onPressed: () {},
    //     //   child: const Text('Get Quote'),
    //     // ),
    //   ],
    // );
    return Card(
      elevation: 0,
      color: Colors.pink,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.radius),
      ),
      child: Column(
        children: [],
      ),
    );
  }
}
