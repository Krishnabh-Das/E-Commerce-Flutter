import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class gridLayout extends StatelessWidget {
  const gridLayout({
    super.key,
    required this.itemCount,
    this.extendMainAxis = 305,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? extendMainAxis;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: MyAppSizes.gridViewSpacing,
          crossAxisSpacing: MyAppSizes.gridViewSpacing,
          mainAxisExtent: extendMainAxis),
      itemBuilder: itemBuilder,
    );
  }
}
