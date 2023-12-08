import 'package:ecommerce/common/styles/shadow_style.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/common/widgets/image_shape/rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_with_verfiedIcon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class productCartVertical extends StatelessWidget {
  const productCartVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            boxShadow: [shadowStyle.verticalProductShadow],
            borderRadius: BorderRadius.circular(MyAppSizes.productImageRadius),
            color: dark ? MyAppColors.darkerGrey : MyAppColors.textWhite),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// --Image
            roundedContainer(
              height: 210,
              padding: EdgeInsets.all(MyAppSizes.sm),
              backgroundColor: dark ? MyAppColors.dark : MyAppColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  Positioned(
                      left: 0,
                      right: 0,
                      top: 25,
                      child: roundedImage(
                        imageUrl: MyAppImages.product2,
                        backgroundColor:
                            dark ? MyAppColors.dark : MyAppColors.light,
                      )),

                  // Sale Tag
                  Positioned(
                    top: 6,
                    child: roundedContainer(
                      radius: MyAppSizes.sm,
                      backgroundColor: MyAppColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: MyAppSizes.sm, vertical: MyAppSizes.xs),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: MyAppColors.black),
                      ),
                    ),
                  ),

                  // Favourite Icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: circularIcon(color: MyAppColors.red),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: MyAppSizes.spaceBtwItems / 2,
            ),

            /// --Details
            Padding(
              padding: EdgeInsets.only(left: MyAppSizes.sm),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align children to the start
                children: [
                  productTitleText(title: "Smart Watch"),
                  SizedBox(
                    height: MyAppSizes.spaceBtwItems / 2,
                  ),
                  brandTitleWithVerification(title: "Nike"),
                ],
              ),
            ),
            const Spacer(),

            // Price & Add button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: const EdgeInsets.only(left: MyAppSizes.sm - 1),
                  child: productPriceText(priceText: "35.55"),
                ),

                Container(
                  decoration: const BoxDecoration(
                      color: MyAppColors.dark,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(MyAppSizes.cardRadiusMd),
                          bottomRight:
                              Radius.circular(MyAppSizes.productImageRadius))),
                  child: const SizedBox(
                    height: MyAppSizes.iconLg * 1.2,
                    width: MyAppSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: MyAppColors.textWhite,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
