import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/image_shape/rounded_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_with_verfiedIcon.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class cartItem extends StatelessWidget {
  const cartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = MyAppHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        /// Image
        roundedImage(
          imageUrl: MyAppImages.product2,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(MyAppSizes.sm),
          backgroundColor: dark ? MyAppColors.darkishGrey : MyAppColors.light,
        ),

        SizedBox(width: MyAppSizes.spaceBtwItems),

        /// Title, Price & Size
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              brandTitleWithVerification(title: "Nike"),
              productTitleText(
                title: "Apple Watch",
                maxLines: 1,
              ),

              // Attributes
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Color",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: " Green",
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: " Size",
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: " UK 08",
                    style: Theme.of(context).textTheme.bodyLarge),
              ]))
            ],
          ),
        )
      ],
    );
  }
}
