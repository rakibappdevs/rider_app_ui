import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/component.dart';

class PcBuilderController extends GetxController {
  final coreComponents = [
    ComponentItem(name: 'CPU', icon: Icons.memory, required: true),
    ComponentItem(name: 'CPU Cooler', icon: Icons.ac_unit),
    ComponentItem(
        name: 'Motherboard', icon: Icons.developer_board, required: true),
    ComponentItem(name: 'RAM', icon: Icons.storage, required: true),
    ComponentItem(name: 'Storage', icon: Icons.sd_storage, required: true),
    ComponentItem(name: 'Graphics Card', icon: Icons.videogame_asset),
    ComponentItem(name: 'Power Supply', icon: Icons.power),
    ComponentItem(name: 'Casing', icon: Icons.computer),
  ];

  final peripheralComponents = [
    ComponentItem(name: 'Monitor', icon: Icons.monitor),
    ComponentItem(name: 'Casing Cooler', icon: Icons.air),
    ComponentItem(name: 'Keyboard', icon: Icons.keyboard),
    ComponentItem(name: 'Mouse', icon: Icons.mouse),
    ComponentItem(name: 'Anti Virus', icon: Icons.security),
    ComponentItem(name: 'UPS', icon: Icons.battery_charging_full),
  ];
}
