import 'package:get/get.dart';
import 'package:goodhealth/services/api_services.dart';

class OTPAuthController extends GetxController {
  //var productDescList = [].obs;
  var otpSession = Map().obs;
  var isLoading = true.obs;
  // final String productId;
  final int otp;
  final String sessionId;
  OTPAuthController({
    required this.otp,
    required this.sessionId,
  });

  @override
  void onInit() {
    // TODO: implement onInit
    fetchOTPSession();
    super.onInit();
  }

  void fetchOTPSession() async {
    try {
      isLoading(true);
      var phoneDesc = await OTPApiService.fetchOTPSession(otp, sessionId);
      if (phoneDesc != null) {
        otpSession.value = phoneDesc;
        print(phoneDesc);
        print(otpSession);
      }
    } finally {
      isLoading(false);
      print(otpSession);
    }
  }
}
