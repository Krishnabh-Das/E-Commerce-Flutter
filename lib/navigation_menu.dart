import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class navigationMenu extends StatelessWidget {
  navigationMenu({super.key});

  final controller = Get.put(navigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Withlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
          elevation: 0,
          height: 80,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) =>
              controller.selectedIndex.value = value,
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class navigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const homeScreen(),
    Container(color: Colors.red),
    Container(color: Colors.yellow),
    Container(color: Colors.green),
  ];
}
