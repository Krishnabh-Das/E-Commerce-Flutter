import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/product_carts/product_cart_vertical.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class favouriteScreen extends StatelessWidget {
  const favouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: appBar(
          actions: [
            Icon(
              Iconsax.add,
              color: dark ? MyAppColors.textWhite : MyAppColors.darkGrey,
            )
          ],
          title: Text(
            "Wishlist",
            style: Theme.of(context).textTheme.headlineMedium,
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
          child: gridLayout(
              itemCount: 6,
              itemBuilder: (_, index) {
                return const productCartVertical();
              }),
        ),
      ),
    );
  }
}
