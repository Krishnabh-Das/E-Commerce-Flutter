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

class productCartHorizontal extends StatelessWidget {
  const productCartHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = MyAppHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MyAppSizes.productImageRadius),
          color: dark ? MyAppColors.darkerGrey : MyAppColors.textWhite),
      child: Row(
        children: [
          /// Thumbnail
          roundedContainer(
            height: 120,
            padding: EdgeInsets.all(MyAppSizes.sm),
            backgroundColor: dark ? MyAppColors.dark : MyAppColors.light,
            child: Stack(
              children: [
                /// -- Thumbnail Image
                SizedBox(
                  height: 120,
                  width: 120,
                  child: roundedImage(
                    imageUrl: MyAppImages.product3,
                    applyImageRadius: true,
                  ),
                ),

                // Sale Tag
                Positioned(
                  top: 4,
                  child: roundedContainer(
                    radius: MyAppSizes.sm,
                    backgroundColor: MyAppColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(
                        horizontal: MyAppSizes.sm, vertical: MyAppSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context).textTheme.labelLarge!.apply(
                          color: MyAppColors.black, fontSizeFactor: 0.85),
                    ),
                  ),
                ),

                // Favourite Icon
                const Positioned(
                  top: 0,
                  right: -10,
                  child: circularIcon(
                    color: MyAppColors.red,
                    radius: 33,
                    iconSize: 18,
                  ),
                )
              ],
            ),
          ),

          /// Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: EdgeInsets.only(top: MyAppSizes.sm, left: MyAppSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      productTitleText(
                        title: "Green Nike Sport Shoes Yasss",
                        smallSize: true,
                      ),
                      SizedBox(
                        height: MyAppSizes.spaceBtwItems / 2,
                      ),
                      brandTitleWithVerification(title: "Nike")
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pricing
                      Flexible(child: productPriceText(priceText: "256.0")),

                      // Add to Cart Button
                      Container(
                        decoration: const BoxDecoration(
                            color: MyAppColors.dark,
                            borderRadius: BorderRadius.only(
                                topLeft:
                                    Radius.circular(MyAppSizes.cardRadiusMd),
                                bottomRight: Radius.circular(
                                    MyAppSizes.productImageRadius))),
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
