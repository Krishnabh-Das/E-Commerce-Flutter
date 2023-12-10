import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/image_shape/circular_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_with_verfiedIcon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class productMetaData extends StatelessWidget {
  const productMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Price & Sale Price
        Row(
          children: [
            // Sale Tag
            roundedContainer(
              backgroundColor: MyAppColors.secondary.withOpacity(0.9),
              radius: MyAppSizes.sm,
              padding: const EdgeInsets.symmetric(
                  horizontal: MyAppSizes.sm, vertical: MyAppSizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: MyAppColors.black),
              ),
            ),
            const SizedBox(
              width: MyAppSizes.spaceBtwItems,
            ),

            // Price
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: MyAppSizes.spaceBtwItems,
            ),
            const productPriceText(
              priceText: "175",
              isLarge: true,
            )
          ],
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwItems / 1.3,
        ),

        /// Title
        const productTitleText(title: "White Nike Sports Shoes"),

        const SizedBox(
          height: MyAppSizes.spaceBtwItems / 1.3,
        ),

        /// Stock Status
        Row(
          children: [
            const productTitleText(title: "Status"),
            const SizedBox(
              width: MyAppSizes.spaceBtwItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwItems / 1.3,
        ),

        /// Brand
        Row(
          children: [
            circularImage(
              width: 32,
              height: 32,
              image: dark
                  ? MyAppImages.githubDarkLogo
                  : MyAppImages.githubLightLogo,
              overlayColor: dark ? MyAppColors.dark : MyAppColors.light,
            ),
            const brandTitleWithVerification(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
