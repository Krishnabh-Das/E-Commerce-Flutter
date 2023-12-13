import 'package:ecommerce/common/widgets/brands/brand_show_case.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/product_cart_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class categoryTab extends StatelessWidget {
  const categoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(MyAppSizes.defaultSpace / 1.5),
            child: Column(
              children: [
                // --Brands
                const brandShowcase(
                  images: [
                    MyAppImages.product2,
                    MyAppImages.product3,
                    MyAppImages.product4
                  ],
                ),
                const brandShowcase(
                  title: "Nike",
                  text: "92 products",
                  images: [
                    MyAppImages.product3,
                    MyAppImages.product1,
                    MyAppImages.product4
                  ],
                ),
                // --Products
                sectionHeading(
                  title: "You Might Like",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: MyAppSizes.spaceBtwItems,
                ),
                gridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return const productCartVertical();
                    }),
                const SizedBox(
                  height: MyAppSizes.spaceBtwItems / 1.5,
                ),
              ],
            ),
          ),
        ]);
  }
}
