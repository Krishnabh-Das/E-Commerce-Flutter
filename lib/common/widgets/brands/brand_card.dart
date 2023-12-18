import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/image_shape/circular_image.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_with_verfiedIcon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class brandCard extends StatelessWidget {
  const brandCard(
      {super.key,
      this.showBorder = true,
      this.image = MyAppImages.githubLightLogo,
      this.title = "Nike",
      this.text = "256 Products",
      this.onTap,
      this.color = MyAppColors.primary});

  final bool showBorder;
  final String image, title;
  final String? text;
  final VoidCallback? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: roundedContainer(
        padding: const EdgeInsets.all(MyAppSizes.sm),
        borderColor: color,
        showBorder: showBorder,
        backgroundColor: MyAppColors.transperant,
        child: Row(
          children: [
            // Icon
            Flexible(
              child: circularImage(
                image: image,
                backgroundColor: Colors.transparent,
                overlayColor: dark ? MyAppColors.light : MyAppColors.dark,
              ),
            ),
            const SizedBox(
              width: MyAppSizes.spaceBtwItems / 3,
            ),
            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  brandTitleWithVerification(
                    title: title,
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    text!,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
