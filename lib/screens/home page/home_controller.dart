import 'package:get/get.dart';
import 'package:goodhealth/services/remote_services.dart';

class HomeController extends GetxController {
  var productList = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
        print(products);
        print(productList);
      }
    } finally {
      isLoading(false);
      print(productList);
    }
  }
}
