import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodhealth/models/product_model.dart';
import 'package:goodhealth/screens/home%20page/home_controller.dart';

class CartController extends GetxController {
  var _products = {}.obs;
  var subTotal = 0.0.obs;
  var quantity = 0.obs;

  @override
  void onInit() {
    // addNewProduct();
    super.onInit();
  }

  void addProduct(GetAllProduct product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar(
      'Product Added',
      'You have added ${product.productTitle} to the cart',
      snackPosition: SnackPosition.TOP,
      duration: Duration(milliseconds: 1200),
      animationDuration: Duration(milliseconds: 500),
      titleText: Text(
        'Product Added',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w800, fontSize: 16),
      ),
    );
  }

  // TODO -> void removeProduct(){}
  void removeProduct(GetAllProduct product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }

    Get.snackbar(
      'Product Removed',
      'You have removed ${product.productTitle} from the cart',
      snackPosition: SnackPosition.TOP,
      duration: Duration(milliseconds: 1200),
      animationDuration: Duration(milliseconds: 500),
      titleText: Text(
        'Product Removed',
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w800, fontSize: 16),
      ),
    );
  }

  // TODO -> get products
  get products => _products;
  //get newProducts => _productsList;

  // TODO -> get productSubtotal
  get productSubtotal => _products.entries
      .map((product) => product.key.actualPrice * product.value)
      .toList();

  // TODO -> get total
  get total => _products.entries
      .map((product) => product.key.actualPrice * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
