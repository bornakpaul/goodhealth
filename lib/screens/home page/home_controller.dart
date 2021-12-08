import 'package:get/get.dart';

class HomeController extends GetxController {
  var counter = 0.obs;

  void increaseCounter() {
    counter.value++;
  }

  void decreaseCounter() {
    counter.value--;
    if (counter.value <= 0) {
      counter.value = 0;
    }
  }
}
