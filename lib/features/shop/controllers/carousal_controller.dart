import 'package:flutter/material.dart';
import 'package:get/get.dart';

class carousalController extends GetxController {
  static carousalController get instance => Get.find();

  final RxInt carousalCurrentIndex = 0.obs;

  void updatePageIndicator(int index) {
    carousalCurrentIndex.value = index;
  }
}
