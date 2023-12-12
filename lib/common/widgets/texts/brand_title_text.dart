import 'package:ecommerce/utils/constants/enums.dart';
import 'package:flutter/material.dart';

class brandTitleText extends StatelessWidget {
  const brandTitleText({
    super.key,
    required this.title,
    this.color,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
    this.style,
  });

  final String title;
  final Color? color;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextSizes? brandTextSize;

  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: style ?? (brandTextSize == TextSizes.small
              ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
              : brandTextSize == TextSizes.medium
                  ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
                  : brandTextSize == TextSizes.large
                      ? Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: color)
                      : Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: color)),
    );
  }
}
