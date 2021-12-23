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
      desc:
          'Idly dosa batter description is typed here. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      quantity: 2,
      imagePath: "assets/freshfood.png",
    ),
    Product(
      title: 'BARNYARD MILLET',
      price: 322.33,
      desc:
          'Barnyard millet desription is typed here. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      quantity: 1,
      imagePath: "assets/delivery.png",
    ),
    Product(
      title: 'FINAL PRODUCT TITLE',
      price: 400.09,
      desc:
          'Final product description is typed here. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      quantity: 5,
      imagePath: "assets/cashless.png",
    ),
  ];
}
