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
      price: 1165.09,
      desc: 'IDLY DOSA BATTER',
      quantity: 2,
      imagePath: "assets/freshfood.png",
    ),
    Product(
      title: 'BARNYARD MILLET',
      price: 1165.09,
      desc: 'BARNYARD MILLET BATTER',
      quantity: 10,
      imagePath: "assets/delivery.png",
    ),
    Product(
      title: 'finalproduct Title',
      price: 400.09,
      desc: 'final product description',
      quantity: 5,
      imagePath: "assets/cashless.png",
    ),
  ];
}
