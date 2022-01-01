import 'package:get/get.dart';
import 'package:goodhealth/models/product_model.dart';
import 'package:goodhealth/services/api_services.dart';

class HomeController extends GetxController {
  var productList = <GetAllProduct>[].obs;
  var isLoading = true.obs;
  //var productMapList = Map().obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var products = await ProductApiService.fetchProducts();
      if (products != null) {
        productList.value = products;
        // productMapList.value = Map.from(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
