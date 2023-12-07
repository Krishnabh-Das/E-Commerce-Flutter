import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/features/shop/controllers/carousal_controller.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(carousalController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const primaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  homeAppBar(),

                  SizedBox(
                    height: MyAppSizes.spaceBtwSections,
                  ),

                  // Search Bar
                  searchContainer(
                    text: "Search in Store",
                  ),

                  SizedBox(
                    height: MyAppSizes.spaceBtwSections,
                  ),

                  // Categories
                  homeCategories()
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(MyAppSizes.spaceBtwItems),
              child: promoSlider(controller: controller, banners: const [
                MyAppImages.banner1,
                MyAppImages.banner2,
                MyAppImages.banner3
              ]),
            )
          ],
        ),
      ),
    );
  }
}
