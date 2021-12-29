import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodhealth/products/products.dart';
import 'package:goodhealth/screens/cart%20page/cart_controller.dart';

class CartProducts extends StatelessWidget {
  final CartController controller = Get.find();
  CartProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Flexible(
        child: ListView.builder(
            itemCount: controller.products.length,
            itemBuilder: (BuildContext context, int index) {
              return CartProductCard(
                controller: controller,
                index: index,
                // product: controller.products.keys.toList()[index],
                quantity: controller.products.values.toList()[index],
              );
            }),
      ),
    );
  }
}

class CartProductCard extends StatelessWidget {
  final CartController controller;
  //final Product product;
  final int quantity;
  final int index;
  const CartProductCard({
    Key? key,
    required this.controller,
    required this.index,
    // required this.product,
    required this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.transparent,
            // backgroundImage: AssetImage(product.imagePath),
          ),
          SizedBox(
            width: 10.0,
          ),
          // Expanded(
          //   child: Text(
          //     product.title,
          //     style: TextStyle(
          //       fontSize: 16,
          //       fontWeight: FontWeight.w600,
          //     ),
          //   ),
          // ),
          IconButton(
            onPressed: () {
              //controller.removeProduct(product);
            },
            icon: Icon(Icons.remove_circle),
          ),
          Text(
            '${quantity}',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {
              // controller.addProduct(product);
            },
            icon: Icon(Icons.add_circle),
          ),
        ],
      ),
    );
  }
}
