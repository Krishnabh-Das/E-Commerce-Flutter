import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/image_shape/rounded_image.dart';
import 'package:ecommerce/common/widgets/products/cart/product_cart_horizontal.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        showBackArrow: true,
        actions: [],
        title: Text(
          "Sports",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpace),
          child: Column(
            children: [
              /// Banner
              roundedImage(
                imageUrl: MyAppImages.banner1,
                width: double.infinity,
                height: null,
                applyImageRadius: true,
              ),
              const SizedBox(height: MyAppSizes.spaceBtwSections),

              /// Sub Categories
              Column(
                children: [
                  // Heading
                  sectionHeading(
                    title: "Sports Shoes",
                    onPressed: () {},
                  ),
                  const SizedBox(height: MyAppSizes.spaceBtwItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 4,
                        separatorBuilder: (_, __) => SizedBox(
                              width: MyAppSizes.spaceBtwItems,
                            ),
                        itemBuilder: (_, index) => productCartHorizontal()),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
