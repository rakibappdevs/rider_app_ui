class Product {
  final String category;
  final String title;
  final double price;
  final String imageUrl;
  final double? discount;

  Product({
    required this.category,
    required this.title,
    required this.price,
    required this.imageUrl,
    this.discount,
  });
}

final List<Product> products = [
  Product(
    category: 'Wireless Charger',
    title: 'Baseus Swan 3-In-1 20W Wireless Black Magnetic',
    price: 4299,
    imageUrl:
        'https://ruddra.appdevs.team/adtech/assets/images/product/product-1.webp',
  ),
  Product(
    category: 'Wall Charger',
    title: 'Baseus Speed Mini Dual USB 10.5W EU Black Wall',
    price: 500,
    imageUrl:
        'https://ruddra.appdevs.team/adtech/assets/images/product/product-2.webp',
    discount: 8.33,
  ),
  Product(
    category: 'Converter',
    title: 'Belkin Type-C Male to 3.5mm & Type-C Female Black',
    price: 3700,
    imageUrl:
        'https://ruddra.appdevs.team/adtech/assets/images/product/product-3.webp',
  ),
  Product(
    category: 'Ring Light',
    title: 'Havit ST7026 LED Phone Holder with RGB LED Series',
    price: 1600,
    imageUrl:
        'https://ruddra.appdevs.team/adtech/assets/images/product/product-4.webp',
  ),
  Product(
    category: 'Mini Converter',
    title: 'ORICO Type-C Male to Micro B Female Black',
    price: 600,
    imageUrl:
        'https://ruddra.appdevs.team/adtech/assets/images/product/product-5.webp',
    discount: 8.33,
  ),
  Product(
    category: 'Converter',
    title: 'Ugreen 80154 Type-C Male to 3.5mm Audio Female',
    price: 1400,
    imageUrl:
        'https://ruddra.appdevs.team/adtech/assets/images/product/product-6.webp',
  ),
];
