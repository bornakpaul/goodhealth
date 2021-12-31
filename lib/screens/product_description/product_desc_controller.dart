import 'package:get/get.dart';
import 'package:goodhealth/services/api_services.dart';

class ProductDescController extends GetxController {
  //var productDescList = [].obs;
  var productDescList = Map().obs;
  var isLoading = true.obs;
  final String productId;

  ProductDescController({required this.productId});

  @override
  void onInit() {
    fetchProductDesc();
    super.onInit();
  }

  void fetchProductDesc() async {
    try {
      isLoading(true);
      var productDesc = await ProductDescApiService.fetchProductDesc(productId);
      if (productDesc != null) {
        productDescList.value = productDesc;
        print(productDesc);
        print(productDescList);
      }
    } finally {
      isLoading(false);
      print(productDescList);
    }
  }
}
