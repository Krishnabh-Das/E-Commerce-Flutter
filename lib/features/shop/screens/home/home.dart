import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/serach_container.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            primaryHeaderContainer(
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
            )
          ],
        ),
      ),
    );
  }
}
