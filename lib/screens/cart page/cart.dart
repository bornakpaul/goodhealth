import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodhealth/screens/cart%20page/cart_controller.dart';

import 'widgets/cart_products.dart';
import 'widgets/cart_total.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //! MediaQuery sizes
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    //*
    final CartController controller = Get.find();

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
      body: Obx(
        () => controller.products.length == 0
            ? Container(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        child: Image.asset(
                          "assets/empty_cart.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text('Your cart is empty'),
                    ],
                  ),
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CartProducts(),
                  SizedBox(height: 8),
                  CartTotal(),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Place Order"),
                  ),
                  SizedBox(height: 15),
                ],
              ),
      ),
    );
  }
}
