import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodhealth/screens/home%20page/home_controller.dart';
import 'package:goodhealth/screens/product_description/product_desc_controller.dart';

class ProductDescription extends StatelessWidget {
  // final String imagePath;
  final int index;
  final String productID;

  final HomeController homeController = Get.find();

  ProductDescription({
    Key? key,
    required this.index,
    required this.productID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDescController productDescController =
        Get.put(ProductDescController(productId: productID));
    //*
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 200,
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              text: homeController.productList[index].productTitle,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Body(
          index: index,
          productId: homeController.productList[index].productId!,
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final ProductDescController productDescController = Get.find();
  final HomeController homeController = Get.find();
  final String productId;
  final int index;
  Body({Key? key, required this.productId, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '₹' +
                          productDescController.productDescList['actualprice']
                              .toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '₹' +
                          productDescController.productDescList['mrp']
                              .toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Description ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  productDescController.productDescList['productdescription'],
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
