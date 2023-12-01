import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MyAppSpacingStyles {
  static const paddingWithAppBarHeight = EdgeInsets.only(
    top: MyAppSizes.appBarHeight,
    bottom: MyAppSizes.defaultSpace,
    left: MyAppSizes.defaultSpace * 0.8,
    right: MyAppSizes.defaultSpace * 0.8,
  );
}
