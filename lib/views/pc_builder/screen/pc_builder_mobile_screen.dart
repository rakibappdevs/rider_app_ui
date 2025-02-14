part of 'pc_builder_screen.dart';

class PcBuilderMobileScreen extends StatelessWidget {
  const PcBuilderMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        Strings.pcBuilder,
        action: [
          PcBuilderMenu(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // _buildHeader(),
              // const SizedBox(height: 20),
              // _buildComponentSection('Core Components', coreComponents),
              // const SizedBox(height: 20),
              // _buildComponentSection(
              //     'Peripherals & Others', peripheralComponents),
              PcBuilderTopBar(),
              CoreComponents(),
              Peripherals(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'PC Builder - Build Your Own Computer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Get 30% Cashback Offer',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        Row(
          children: [
            _buildWattageCard(),
            const SizedBox(width: 10),
            _buildItemsCard(),
          ],
        ),
      ],
    );
  }

  Widget _buildWattageCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            Text('0W', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Estimated Wattage', style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }

  Widget _buildItemsCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: const [
            Text('0৳', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('0 items', style: TextStyle(fontSize: 12)),
          ],
        ),
      ),
    );
  }
}

// Component data
// final coreComponents = [
//   ComponentItem(name: 'CPU', icon: Icons.memory, required: true),
//   ComponentItem(name: 'CPU Cooler', icon: Icons.ac_unit),
//   ComponentItem(
//       name: 'Motherboard', icon: Icons.developer_board, required: true),
//   ComponentItem(name: 'RAM', icon: Icons.storage, required: true),
//   ComponentItem(name: 'Storage', icon: Icons.sd_storage, required: true),
//   ComponentItem(name: 'Graphics Card', icon: Icons.videogame_asset),
//   ComponentItem(name: 'Power Supply', icon: Icons.power),
//   ComponentItem(name: 'Casing', icon: Icons.computer),
// ];

// final peripheralComponents = [
//   ComponentItem(name: 'Monitor', icon: Icons.monitor),
//   ComponentItem(name: 'Casing Cooler', icon: Icons.air),
//   ComponentItem(name: 'Keyboard', icon: Icons.keyboard),
//   ComponentItem(name: 'Mouse', icon: Icons.mouse),
//   ComponentItem(name: 'Anti Virus', icon: Icons.security),
//   ComponentItem(name: 'UPS', icon: Icons.battery_charging_full),
// ];

// Widget _buildComponentSection(String title, List<ComponentItem> items) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Container(
//         padding: const EdgeInsets.all(8),
//         color: Colors.grey[300],
//         child: Text(
//           title,
//           style: const TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       const SizedBox(height: 10),
//       ...items.map((item) => _buildComponentCard(item)).toList(),
//     ],
//   );
// }

// Widget _buildComponentCard(ComponentItem item) {
//   return Card(
//     margin: const EdgeInsets.only(bottom: 10),
//     child: Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Row(
//         children: [
//           Container(
//             padding: const EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               color: Colors.blue[50],
//               borderRadius: BorderRadius.circular(8),
//             ),
//             child: Icon(item.icon, color: Colors.blue),
//           ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: Row(
//               children: [
//                 Text(
//                   item.name,
//                   style: const TextStyle(fontWeight: FontWeight.w500),
//                 ),
//                 if (item.required)
//                   Container(
//                     margin: const EdgeInsets.only(left: 8),
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 8,
//                       vertical: 2,
//                     ),
//                     decoration: BoxDecoration(
//                       color: Colors.grey[400],
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                     child: const Text(
//                       'Required',
//                       style: TextStyle(fontSize: 12),
//                     ),
//                   ),
//               ],
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             child: const Text('Choose'),
//             style: ElevatedButton.styleFrom(
//               foregroundColor: Colors.white,
//               backgroundColor: Colors.blue,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
