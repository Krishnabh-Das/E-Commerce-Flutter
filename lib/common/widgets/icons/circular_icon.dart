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
      this.backgroundColor,
      this.iconSize});

  final IconData? icon;
  final double? radius;
  final Color color;
  final Color? backgroundColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Container(
      height: radius,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ??
              (dark
                  ? MyAppColors.darkishGrey.withOpacity(0.5)
                  : MyAppColors.textWhite.withOpacity(0.9))),
      child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            color: color,
            size: iconSize,
          )),
    );
  }
}
