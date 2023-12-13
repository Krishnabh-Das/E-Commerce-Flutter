import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/features/shop/screens/cart/cart.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homeAppBar extends StatelessWidget {
  const homeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return appBar(
      actions: [
        const cartCounterIcon(
          iconColor: MyAppColors.textWhite,
        )
      ],
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyAppTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: MyAppColors.grey),
          ),
          Text(
            MyAppTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: MyAppColors.textWhite),
          ),
        ],
      ),
    );
  }
}
