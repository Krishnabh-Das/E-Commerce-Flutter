import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/common/widgets/image_shape/rounded_image.dart';
import 'package:ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_tem.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_with_verfiedIcon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class cartItems extends StatelessWidget {
  const cartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(
        height: MyAppSizes.spaceBtwSections,
      ),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          cartItem(),
          const SizedBox(height: MyAppSizes.spaceBtwItems),
          if (showAddRemoveButtons)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 68),
                    // Add Remove Buttons
                    productQuantityWithAddRemoveButton(),
                  ],
                ),
                productPriceText(priceText: "250")
              ],
            )
        ],
      ),
    );
  }
}
