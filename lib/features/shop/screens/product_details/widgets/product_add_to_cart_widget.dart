import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class bottomAddToCart extends StatelessWidget {
  const bottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(
          horizontal: MyAppSizes.defaultSpace,
          vertical: MyAppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          border: const Border(
            top: BorderSide(color: MyAppColors.black, width: 0.5),
            left: BorderSide(color: MyAppColors.black, width: 0.5),
            right: BorderSide(color: MyAppColors.black, width: 0.5),
          ),
          color: dark ? MyAppColors.black : MyAppColors.light,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(MyAppSizes.cardRadiusLg),
              topRight: Radius.circular(MyAppSizes.cardRadiusLg))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              circularIcon(
                color: dark ? MyAppColors.black : MyAppColors.textWhite,
                icon: Iconsax.minus,
                backgroundColor:
                    dark ? MyAppColors.darkGrey : MyAppColors.darkerGrey,
              ),
              const SizedBox(
                width: MyAppSizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                width: MyAppSizes.spaceBtwItems,
              ),
              const circularIcon(
                color: MyAppColors.textWhite,
                icon: Iconsax.add,
                backgroundColor: MyAppColors.darkBlack,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                side: const BorderSide(color: MyAppColors.black),
                backgroundColor: MyAppColors.darkBlack,
                padding: const EdgeInsets.all(MyAppSizes.md)),
            child: const Text("Add to Cart"),
          )
        ],
      ),
    );
  }
}
