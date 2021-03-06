import 'dart:convert';
import 'package:goodhealth/models/product_desc_model.dart';
import 'package:goodhealth/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductApiService {
  static var client = http.Client();
  static String url =
      "https://api-goodhealth.swiftant.com/api/product/getallproduct";

  static fetchProducts() async {
    var response = await client.post(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonString = json.decode(response.body);
      final data = jsonString['rObj']['getAllProduct'] as List;
      return data.map((newdata) => GetAllProduct.fromJson(newdata)).toList();
    } else {
      //print(response.body);
      return List.empty();
    }
  }
}

class ProductDescApiService {
  static var client = http.Client();
  static String url =
      "https://api-goodhealth.swiftant.com/api/product/getproduct";

  static fetchProductDesc(String productID) async {
    Map id = {
      "productID": productID,
    };
    //* encode map to json
    var body = json.encode(id);

    var response = await client.post(
      Uri.parse(url),
      body: body,
    );
    if (response.statusCode == 200) {
      // var jsonString = json.decode(response.body);
      // final data = jsonString['rObj']['getProduct'];
      Map<String, dynamic> data =
          new Map<String, dynamic>.from(json.decode(response.body));

      //List<dynamic> newData = data['rObj'];
      //print(data['rObj']['getProduct']);
      //print(newData);
      return data['rObj']['getProduct'];
      //print(data.map((newdata) => GetAllProduct.fromJson(newdata)).toList());
      //return data.map((newdata) => GetProduct.fromJson(newdata)).toList();
    } else {
      //print(response.body);
      return List.empty();
    }
  }
}

//! Phone Authentication

class PhoneApiService {
  static var client = http.Client();
  static String url = "https://api-goodhealth.swiftant.com/api/account/login";

  static fetchPhoneSession(String phoneNumber) async {
    Map data = {
      "phoneNo": phoneNumber,
      "countryCode": "+91",
    };

    //* encode map to json
    var body = json.encode(data);

    var response = await client.post(
      Uri.parse(url),
      body: body,
    );
    if (response.statusCode == 200) {
      //var jsonString = response.body;
      Map<String, dynamic> data =
          new Map<String, dynamic>.from(json.decode(response.body));

      //List<dynamic> newData = data['rObj'];
      print(data['rObj']);
      //print(newData);
      return data['rObj'];
    } else {
      //print(response.body);
      return List.empty();
    }
  }
}

//! OTP Authentication

class OTPApiService {
  static var client = http.Client();
  static String url =
      "https://api-goodhealth.swiftant.com/api/account/validateotp";

  static fetchOTPSession(int otp, String sessionID) async {
    Map data = {
      "oTP": otp,
      "oTPSessionID": sessionID,
    };

    //* encode map to json
    var body = json.encode(data);

    var response = await client.post(
      Uri.parse(url),
      body: body,
    );
    if (response.statusCode == 200) {
      //var jsonString = response.body;
      Map<String, dynamic> data =
          new Map<String, dynamic>.from(json.decode(response.body));

      //List<dynamic> newData = data['rObj'];
      //print("rCode is: " + data[rcode]);
      print(data['rObj']);
      //print(newData);
      return data['rObj'];
    } else {
      //print(response.body);
      return List.empty();
    }
  }
}
