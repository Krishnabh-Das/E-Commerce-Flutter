import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class brandShowcase extends StatelessWidget {
  const brandShowcase({
    super.key,
    required this.images,
    this.title = "Levi",
    this.text = "256 products",
  });

  final List<String> images;
  final String title, text;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return roundedContainer(
      padding: EdgeInsets.all(MyAppSizes.md / 1.4),
      borderColor: MyAppColors.darkGrey,
      showBorder: true,
      backgroundColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: MyAppSizes.spaceBtwItems),
      child: Column(
        children: [
          // Brand with Product Count
          brandCard(
            text: text,
            image: MyAppImages.googleLogo,
            title: title,
            showBorder: false,
          ),

          // Brand with Top 3 Product Images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(dark, image))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(bool dark, String image) {
    return Expanded(
      child: roundedContainer(
        height: 100,
        backgroundColor: dark ? MyAppColors.darkerGrey : MyAppColors.light,
        margin: const EdgeInsets.only(right: MyAppSizes.sm),
        padding: EdgeInsets.all(MyAppSizes.sm / 1.5),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
