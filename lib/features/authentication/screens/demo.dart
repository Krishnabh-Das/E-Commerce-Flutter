import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class demo extends StatefulWidget {
  const demo({super.key});

  @override
  State<demo> createState() => _demoState();
}

class _demoState extends State<demo> {
  @override
  Widget build(BuildContext context) {
    int index = 2;
    var screens = [
      Container(
        color: Colors.red,
      ),
      const homeScreen(),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.pink,
      ),
    ];
    final items = [
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.search,
        size: 30,
      ),
      const Icon(
        Icons.heart_broken,
        size: 30,
        color: Colors.white,
      ),
      const Icon(
        Icons.outbond,
        size: 30,
      ),
      const Icon(
        Icons.people,
        size: 30,
      ),
    ];
    final controller = Get.put(controll());

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        items: items,
        index: index,
        onTap: (idx) {
          controller.controller.value = idx;
          Icon icon1 = Icon(
            items[index].icon,
            color: Colors.black,
            size: items[index].size,
          );

          items[index] = icon1;
          Icon icon = Icon(
            items[idx].icon,
            color: Colors.white,
            size: items[idx].size,
          );

          items[idx] = icon;
          index = idx;
        },
        animationDuration: const Duration(milliseconds: 300),
        buttonBackgroundColor: Colors.blue,
      ),
      body: Obx(() => screens[controller.controller.value]),
    );
  }
}

class controll extends GetxController {
  final Rx<int> controller = 0.obs;
}
