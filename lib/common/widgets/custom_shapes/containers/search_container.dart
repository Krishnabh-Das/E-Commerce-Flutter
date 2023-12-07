import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class searchContainer extends StatelessWidget {
  const searchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: MyAppSizes.defaultSpace),
        child: Container(
          width: MyAppDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(MyAppSizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? MyAppColors.dark
                      : MyAppColors.textWhite
                  : MyAppColors.transperant,
              borderRadius: BorderRadius.circular(MyAppSizes.cardRadiusLg),
              border: showBorder ? Border.all(color: MyAppColors.grey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: dark ? MyAppColors.darkGrey : MyAppColors.darkerGrey,
              ),
              const SizedBox(
                width: MyAppSizes.spaceBtwItems,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: dark ? MyAppColors.grey : MyAppColors.darkGrey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
