import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/common/widgets/image_shape/rounded_image.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_tem.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_with_verfiedIcon.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class productQuantityWithAddRemoveButton extends StatelessWidget {
  const productQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = MyAppHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        circularIcon(
          color: dark ? MyAppColors.textWhite : MyAppColors.darkBlack,
          backgroundColor: dark ? MyAppColors.darkerGrey : MyAppColors.light,
          icon: Iconsax.minus,
          radius: 40,
        ),
        const SizedBox(width: MyAppSizes.spaceBtwItems),
        Text("2",
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(width: MyAppSizes.spaceBtwItems),
        circularIcon(
          color: MyAppColors.textWhite,
          backgroundColor: MyAppColors.primary.withOpacity(0.9),
          icon: Iconsax.add,
        ),
      ],
    );
  }
}
