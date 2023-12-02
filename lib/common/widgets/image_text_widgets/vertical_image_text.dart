import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class verticalImageText extends StatelessWidget {
  const verticalImageText({
    super.key,
    required this.title,
    this.textColor = MyAppColors.textWhite,
    this.backgroundColor,
    this.onTap,
    required this.image,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: MyAppSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(MyAppSizes.sm),
              decoration: BoxDecoration(
                  color: backgroundColor ??
                      (dark ? MyAppColors.dark : MyAppColors.light),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Text
            const SizedBox(
              height: MyAppSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 60,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
