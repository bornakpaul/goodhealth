import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    //! MediaQuery sizes
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    //! BUTTON
    final addToCartButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        minWidth: width,
        onPressed: () {},
        child: Text(
          "Shop Now",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.transparent,
          ),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 250,
                child: Image.asset(
                  "assets/empty_cart.png",
                  fit: BoxFit.contain,
                ),
              ),
              Text('Your cart is empty'),
              SizedBox(
                height: 30.0,
              ),
              addToCartButton,
            ],
          ),
        ),
      ),
    );
  }
}
