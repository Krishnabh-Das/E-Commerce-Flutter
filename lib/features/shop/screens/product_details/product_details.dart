import 'package:ecommerce/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class productDetails extends StatelessWidget {
  const productDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            productImageSlider(),

            /// Details
            Padding(
              padding: EdgeInsets.only(
                  right: MyAppSizes.defaultSpace,
                  left: MyAppSizes.defaultSpace,
                  bottom: MyAppSizes.defaultSpace),
              child: Column(
                children: [
                  // Rating & Share
                  ratingAndShare(),

                  // Price, Title, Stock & Brand
                  productMetaData(),
                  // Attributes
                  // Checkout Button
                  // Description
                  // Reviews
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
