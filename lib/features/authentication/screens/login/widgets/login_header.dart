import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class loginHeader extends StatelessWidget {
  loginHeader({super.key, required this.dark});
  var dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: MyAppSizes.sm,
        ),
        Image(
            height: 125,
            image: AssetImage(
                dark ? MyAppImages.lightAppLogo : MyAppImages.lightAppLogo)),
        const SizedBox(
          height: MyAppSizes.sm,
        ),
        Text(
          MyAppTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: MyAppSizes.sm * 0.5,
        ),
        Text(
          MyAppTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
