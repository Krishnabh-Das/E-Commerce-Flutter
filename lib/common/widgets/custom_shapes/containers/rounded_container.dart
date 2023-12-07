import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class roundedContainer extends StatelessWidget {
  const roundedContainer(
      {super.key,
      this.width,
      this.height,
      this.radius = MyAppSizes.cardRadiusLg,
      this.child,
      this.showBorder = false,
      this.borderColor = MyAppColors.borderPrimary,
      this.backgroundColor = MyAppColors.textWhite,
      this.padding,
      this.margin});

  final double? width, height, radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor, backgroundColor;
  final EdgeInsetsGeometry? padding, margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
