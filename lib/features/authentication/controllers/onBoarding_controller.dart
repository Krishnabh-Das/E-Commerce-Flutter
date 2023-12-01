import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onBoardingController extends GetxController {
  static onBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to specific Page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Update current index and jump to next page
  void nextPage() {
    int nextPageIndex = currentPageIndex.value;
    if (nextPageIndex == 2) {
      Get.offAll(const loginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// Upadte current index and jump to the last page
  void skipPage() {
    Get.offAll(const loginScreen());
  }
}
