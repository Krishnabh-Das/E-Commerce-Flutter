import 'package:ecommerce/features/authentication/controllers/onBoarding_controller.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MyAppDeviceUtils.getAppBarHeight(),
        right: MyAppSizes.defaultSpace * 0.55,
        child: TextButton(
          onPressed: () {
            print("Skip");
            onBoardingController.instance.skipPage();
          },
          child: const Text("Skip"),
        ));
  }
}
