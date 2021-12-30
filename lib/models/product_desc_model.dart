// To parse this JSON data, do
//
//     final productDescription = productDescriptionFromJson(jsonString);

import 'dart:convert';

ProductDescription productDescriptionFromJson(String str) =>
    ProductDescription.fromJson(json.decode(str));

String productDescriptionToJson(ProductDescription data) =>
    json.encode(data.toJson());

class ProductDescription {
  ProductDescription({
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

  factory ProductDescription.fromJson(Map<String, dynamic> json) =>
      ProductDescription(
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
    this.getProduct,
  });

  GetProduct? getProduct;

  factory RObj.fromJson(Map<String, dynamic> json) => RObj(
        getProduct: GetProduct.fromJson(json["getProduct"]),
      );

  Map<String, dynamic> toJson() => {
        "getProduct": getProduct!.toJson(),
      };
}

class GetProduct {
  GetProduct({
    this.productId,
    this.producttitle,
    this.actualprice,
    this.mrp,
    this.productdescription,
    this.nutritioninfo,
    this.specification,
    this.productContainQuantity,
    this.moreinfo,
    this.skuid,
  });

  String? productId;
  String? producttitle;
  int? actualprice;
  int? mrp;
  String? productdescription;
  String? nutritioninfo;
  String? specification;
  String? productContainQuantity;
  String? moreinfo;
  String? skuid;

  factory GetProduct.fromJson(Map<String, dynamic> json) => GetProduct(
        productId: json["productID"],
        producttitle: json["producttitle"],
        actualprice: json["actualprice"],
        mrp: json["mrp"],
        productdescription: json["productdescription"],
        nutritioninfo: json["nutritioninfo"],
        specification: json["specification"],
        productContainQuantity: json["productContainQuantity"],
        moreinfo: json["moreinfo"],
        skuid: json["skuid"],
      );

  Map<String, dynamic> toJson() => {
        "productID": productId,
        "producttitle": producttitle,
        "actualprice": actualprice,
        "mrp": mrp,
        "productdescription": productdescription,
        "nutritioninfo": nutritioninfo,
        "specification": specification,
        "productContainQuantity": productContainQuantity,
        "moreinfo": moreinfo,
        "skuid": skuid,
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
