import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/common/widgets/image_shape/rounded_image.dart';
import 'package:ecommerce/common/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_tem.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_with_verfiedIcon.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/checkout.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: appBar(
        actions: [],
        showBackArrow: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(MyAppSizes.defaultSpace),
        child: cartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const checkout()),
          child: Text("Checkout  \$1000.0",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
