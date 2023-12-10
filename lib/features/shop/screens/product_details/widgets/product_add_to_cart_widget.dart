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
          color: dark ? MyAppColors.darkishGrey : MyAppColors.light,
          borderRadius: BorderRadius.only(
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
                    dark ? MyAppColors.darkGrey : MyAppColors.darkGrey,
              ),
              SizedBox(
                width: MyAppSizes.spaceBtwItems,
              ),
              Text(
                "2",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(
                width: MyAppSizes.spaceBtwItems,
              ),
              circularIcon(
                color: MyAppColors.textWhite,
                icon: Iconsax.add,
                backgroundColor: MyAppColors.black,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Add to Cart"),
            style: ElevatedButton.styleFrom(
                side: BorderSide(color: MyAppColors.black),
                backgroundColor: MyAppColors.black,
                padding: EdgeInsets.all(MyAppSizes.md)),
          )
        ],
      ),
    );
  }
}
