import 'dart:convert';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();
  static String url =
      "https://api-goodhealth.swiftant.com/api/product/getallproduct";

  static fetchProducts() async {
    var response = await client.post(Uri.parse(url));

    if (response.statusCode == 200) {
      //var jsonString = response.body;
      Map<String, dynamic> data =
          new Map<String, dynamic>.from(json.decode(response.body));
      //List<dynamic> newData = data['rObj'];
      print(data['rObj']['getAllProduct']);
      //print(newData);
      return data['rObj']['getAllProduct'];
    } else {
      //print(response.body);
      return List.empty();
    }
  }
}
