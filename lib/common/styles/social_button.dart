import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class socialButton extends StatelessWidget {
  const socialButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyAppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: const Image(
                width: MyAppSizes.iconMd,
                height: MyAppSizes.iconMd,
                image: AssetImage(MyAppImages.googleLogo)),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: MyAppSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyAppColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            icon: Image(
                width: MyAppSizes.iconMd*1.37,
                height: MyAppSizes.iconMd*1.37,
                image: AssetImage(dark
                    ? MyAppImages.githubDarkLogo
                    : MyAppImages.githubLightLogo)),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
