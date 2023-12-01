import 'package:ecommerce/features/authentication/controllers/onBoarding_controller.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class onBoardingNext extends StatelessWidget {
  const onBoardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MyAppDeviceUtils.getBottomNavigationBar() * 0.6,
      right: MyAppSizes.defaultSpace,
      child: ElevatedButton(
          onPressed: () => onBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              backgroundColor: dark ? MyAppColors.primary : MyAppColors.dark),
          child: Icon(
            Icons.skip_next,
            color: dark ? MyAppColors.dark : MyAppColors.light,
          )),
    );
  }
}
