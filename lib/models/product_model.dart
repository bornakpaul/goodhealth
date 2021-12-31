// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    this.rcode,
    this.rObj,
    this.rmsg,
    this.reqId,
    this.trnId,
  });

  int? rcode;
  RObj? rObj;
  List<Rmsg>? rmsg;
  String? reqId;
  dynamic? trnId;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        rcode: json["rcode"],
        rObj: RObj.fromJson(json["rObj"]),
        rmsg: List<Rmsg>.from(json["rmsg"].map((x) => Rmsg.fromJson(x))),
        reqId: json["reqID"],
        trnId: json["trnID"],
      );

  Map<String, dynamic> toJson() => {
        "rcode": rcode,
        "rObj": rObj!.toJson(),
        "rmsg": List<dynamic>.from(rmsg!.map((x) => x.toJson())),
        "reqID": reqId,
        "trnID": trnId,
      };
}

class RObj {
  RObj({
    required this.getAllProduct,
  });

  List<GetAllProduct> getAllProduct;

  factory RObj.fromJson(Map<String, dynamic> json) => RObj(
        getAllProduct: List<GetAllProduct>.from(
            json["getAllProduct"].map((x) => GetAllProduct.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "getAllProduct":
            List<dynamic>.from(getAllProduct.map((x) => x.toJson())),
      };
}

class GetAllProduct {
  GetAllProduct({
    this.productId,
    this.productTitle,
    this.productDescription,
    this.productContainQuantity,
    this.actualPrice,
  });

  String? productId;
  String? productTitle;
  String? productDescription;
  String? productContainQuantity;
  double? actualPrice;

  factory GetAllProduct.fromJson(Map<String, dynamic> json) => GetAllProduct(
        productId: json["productID"],
        productTitle: json["productTitle"],
        productDescription: json["productDescription"],
        productContainQuantity: json["productContainQuantity"] == null
            ? '0'
            : json["productContainQuantity"],
        actualPrice: json["actualPrice"],
      );

  Map<String, dynamic> toJson() => {
        "productID": productId,
        "productTitle": productTitle,
        "productDescription": productDescription,
        "productContainQuantity":
            productContainQuantity == null ? '0' : productContainQuantity,
        "actualPrice": actualPrice,
      };
}

class Rmsg {
  Rmsg({
    this.errorText,
    this.errorCode,
    this.fieldName,
    this.fieldValue,
  });

  String? errorText;
  String? errorCode;
  dynamic fieldName;
  dynamic fieldValue;

  factory Rmsg.fromJson(Map<String, dynamic> json) => Rmsg(
        errorText: json["errorText"],
        errorCode: json["errorCode"],
        fieldName: json["fieldName"],
        fieldValue: json["fieldValue"],
      );

  Map<String, dynamic> toJson() => {
        "errorText": errorText,
        "errorCode": errorCode,
        "fieldName": fieldName,
        "fieldValue": fieldValue,
      };
}
