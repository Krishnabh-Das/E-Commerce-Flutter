import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class circularIcon extends StatelessWidget {
  const circularIcon(
      {super.key,
      this.icon = Iconsax.heart5,
      this.radius = 40,
      required this.color,
      this.backgroundColor});

  final IconData? icon;
  final double? radius;
  final Color color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Container(
      height: radius,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor != null
              ? backgroundColor
              : dark
                  ? MyAppColors.black.withOpacity(0.9)
                  : MyAppColors.textWhite.withOpacity(0.9)),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
          )),
    );
  }
}
