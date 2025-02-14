import 'package:flutter/material.dart';

class ProductCategoryModel {
  final int id;
  final IconData icon;
  final String label;
  final ProductDetails productDetails;
  ProductCategoryModel(this.id,
      {required this.icon, required this.label, required this.productDetails});
}

class ProductDetails {
  final int id;
  final List<Brand> brands;
  ProductDetails({required this.id, required this.brands});
}

class Brand {
  final String label;
  final String icon;
  Brand({required this.label, required this.icon});
}
