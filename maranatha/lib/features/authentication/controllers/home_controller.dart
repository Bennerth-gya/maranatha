import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController{
  static HomeController get instance => Get.find();
  final carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}