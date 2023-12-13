import 'package:ecommerce/features/shop/screens/cart/cart.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

class cartCounterIcon extends StatelessWidget {
  const cartCounterIcon({
    super.key,
    required this.iconColor,
  });

  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      IconButton(
          onPressed: () => Get.to(() => cart()),
          icon: Icon(
            Iconsax.shopping_bag,
            color: iconColor,
          )),
      Positioned(
        right: 0,
        child: Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              color: MyAppColors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(100)),
          child: Center(
            child: Text(
              "2",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: MyAppColors.textWhite, fontSizeFactor: 0.8),
            ),
          ),
        ),
      )
    ]);
  }
}
