import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class tabBar extends StatelessWidget implements PreferredSizeWidget {
  const tabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final bool dark = MyAppHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? MyAppColors.black : MyAppColors.textWhite,
      child: TabBar(
          isScrollable: true,
          indicatorColor: MyAppColors.primary,
          unselectedLabelColor: MyAppColors.darkGrey,
          labelColor: dark ? MyAppColors.textWhite : MyAppColors.black,
          tabs: tabs),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MyAppDeviceUtils.getAppBarHeight());
}
