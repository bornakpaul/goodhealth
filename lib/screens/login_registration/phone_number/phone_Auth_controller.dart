import 'package:get/get.dart';
import 'package:goodhealth/services/api_services.dart';

class PhoneAuthController extends GetxController {
  //var productDescList = [].obs;
  var phoneSession = Map().obs;
  var isLoading = true.obs;
  // final String productId;
  final String phoneNumber;
  PhoneAuthController({
    required this.phoneNumber,
  });

  @override
  void onInit() {
    // TODO: implement onInit
    fetchPhoneSession();
    super.onInit();
  }

  void fetchPhoneSession() async {
    try {
      isLoading(true);
      var phoneDesc = await PhoneApiService.fetchPhoneSession(phoneNumber);
      if (phoneDesc != null) {
        phoneSession.value = phoneDesc;
        print(phoneDesc);
        print(phoneSession);
      }
    } finally {
      isLoading(false);
      print(phoneSession);
    }
  }
}
