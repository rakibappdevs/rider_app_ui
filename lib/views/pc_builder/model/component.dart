import 'package:flutter/material.dart';

class ComponentItem {
  final String name;
  final IconData icon;
  final bool required;

  ComponentItem({
    required this.name,
    required this.icon,
    this.required = false,
  });
}
