import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model /product_category_model.dart';

class CategoryController extends GetxController {
  RxInt selectCategoryIndex = 0.obs;
  RxInt selectCategoryId = 1.obs;
  final List<ProductCategoryModel> products = [
    ProductCategoryModel(
      1,
      icon: Icons.camera_alt,
      label: 'Camera',
      productDetails: ProductDetails(
        id: 1,
        brands: [
          Brand(
            label: 'Action Camera',
            icon: '',
          ),
          Brand(
            label: 'Camera Lenses',
            icon: '',
          ),
          Brand(
            label: 'Digital Camera',
            icon: '',
          ),
          Brand(
            label: 'DSLR',
            icon: '',
          ),
          Brand(
            label: 'Handycam',
            icon: '',
          ),
          Brand(
            label: 'Mirrorless Camera',
            icon: '',
          ),
          Brand(
            label: 'Dash Cam',
            icon: '',
          ),
        ],
      ),
    ),
    ProductCategoryModel(
      2,
      icon: Icons.security,
      label: 'Security',
      productDetails: ProductDetails(
        id: 2,
        brands: [],
      ),
    ),
    ProductCategoryModel(
      3,
      icon: Icons.router,
      label: 'Networking',
      productDetails: ProductDetails(
        id: 3,
        brands: [],
      ),
    ),
    ProductCategoryModel(
      4,
      icon: Icons.apps,
      label: 'Software',
      productDetails: ProductDetails(
        id: 4,
        brands: [],
      ),
    ),
    ProductCategoryModel(
      5,
      icon: Icons.storage,
      label: 'Server & Storage',
      productDetails: ProductDetails(
        id: 5,
        brands: [],
      ),
    ),
    ProductCategoryModel(
      6,
      icon: Icons.cable,
      label: 'Accessories',
      productDetails: ProductDetails(
        id: 6,
        brands: [],
      ),
    ),
    ProductCategoryModel(
      7,
      icon: Icons.devices,
      label: 'Gadget',
      productDetails: ProductDetails(
        id: 7,
        brands: [],
      ),
    ),
    ProductCategoryModel(
      8,
      icon: Icons.sports_esports,
      label: 'Gaming',
      productDetails: ProductDetails(
        id: 8,
        brands: [],
      ),
    ),
    ProductCategoryModel(
      9,
      icon: Icons.tv,
      label: 'TV',
      productDetails: ProductDetails(
        id: 9,
        brands: [],
      ),
    ),
    ProductCategoryModel(
      10,
      icon: Icons.home,
      label: 'Appliance',
      productDetails: ProductDetails(
        id: 10,
        brands: [],
      ),
    ),
  ];
}
