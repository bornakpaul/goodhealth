class Product {
  //* Product's variables: price, quantity, title, description, imagePath. All required.

  final String imagePath;
  final String title;
  final String desc;
  final int quantity;
  final double price;

  //* Constructor
  const Product({
    required this.imagePath,
    required this.price,
    required this.title,
    required this.desc,
    required this.quantity,
  });

  //* Sample Products Static
  static const List<Product> products = [
    Product(
      title: 'IDLY DOSA BATTER',
      price: 250.50,
      desc: 'Idly dosa batter description is typed here.',
      quantity: 2,
      imagePath: "assets/freshfood.png",
    ),
    Product(
      title: 'BARNYARD MILLET',
      price: 322.33,
      desc: 'Barnyard millet desription is typed here.',
      quantity: 1,
      imagePath: "assets/delivery.png",
    ),
    Product(
      title: 'FINAL PRODUCT TITLE',
      price: 400.09,
      desc: 'Final product description is typed here.',
      quantity: 5,
      imagePath: "assets/cashless.png",
    ),
  ];
}
