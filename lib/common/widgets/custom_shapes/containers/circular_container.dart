import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class circularContainer extends StatelessWidget {
  const circularContainer({
    super.key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.padding = 0,
    this.backgroundColor = MyAppColors.textWhite,
  });

  final double? width, height, radius, padding;
  final Widget? child;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding!),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius!),
        color: backgroundColor,
      ),
    );
  }
}
