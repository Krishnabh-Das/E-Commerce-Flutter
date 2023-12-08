import 'package:ecommerce/common/widgets/texts/brand_title_text.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class brandTitleWithVerification extends StatelessWidget {
  const brandTitleWithVerification({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = MyAppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
            child: brandTitleText(
          title: title,
          maxLines: maxLines,
          textAlign: textAlign,
          color: textColor,
          brandTextSize: brandTextSize,
        )),
        const SizedBox(
          width: MyAppSizes.xs,
        ),
        Icon(
          Iconsax.verify5,
          color: iconColor,
          size: MyAppSizes.iconXs,
        )
      ],
    );
  }
}
