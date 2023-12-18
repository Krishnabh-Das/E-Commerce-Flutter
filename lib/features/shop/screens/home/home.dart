import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/product_cart_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/controllers/carousal_controller.dart';
import 'package:ecommerce/features/shop/screens/all_products/all_products.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                  homeCategories(),

                  SizedBox(
                    height: MyAppSizes.spaceBtwSections * 1.2,
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(MyAppSizes.spaceBtwItems),
              child: Column(
                children: [
                  // Banner
                  promoSlider(controller: controller, banners: const [
                    MyAppImages.banner1,
                    MyAppImages.banner2,
                    MyAppImages.banner3
                  ]),
                  const SizedBox(
                    height: MyAppSizes.spaceBtwSections,
                  ),

                  sectionHeading(
                    title: "Popular Products",
                    onPressed: () => Get.to(() => AllProducts()),
                  ),
                  const SizedBox(
                    height: MyAppSizes.spaceBtwSections / 2,
                  ),

                  // Grid Layout
                  gridLayout(
                    itemBuilder: (_, index) => const productCartVertical(),
                    itemCount: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
