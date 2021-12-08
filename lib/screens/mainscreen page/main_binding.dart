import 'package:get/get.dart';
import 'package:goodhealth/screens/cart%20page/cart_controller.dart';
import 'package:goodhealth/screens/home%20page/home_controller.dart';
import 'package:goodhealth/screens/mainscreen%20page/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<CartController>(() => CartController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
