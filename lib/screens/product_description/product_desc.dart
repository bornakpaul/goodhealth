import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodhealth/screens/home%20page/home_controller.dart';
import 'package:goodhealth/screens/product_description/product_desc_controller.dart';

class ProductDescription extends StatelessWidget {
  // final String imagePath;
  final int index;
  final String productID;
  final ProductDescController productDescController = Get.find();
  final HomeController homeController = Get.find();

  ProductDescription({
    Key? key,
    required this.index,
    required this.productID,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              text: homeController.productList[index]['productTitle'],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Body(
          index: index,
          productId: homeController.productList[index]['productID'],
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
                      'Price: Rs ' +
                          homeController.productList[index]['actualPrice']
                              .toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    homeController.productList[index]
                                ['productContainQuantity'] ==
                            null
                        ? Text("Qty: 0", style: TextStyle(fontSize: 20))
                        : Text(
                            "Qty: " +
                                homeController.productList[index]
                                    ['productContainQuantity'],
                            style: TextStyle(fontSize: 20),
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
                  homeController.productList[index]['productDescription'],
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
