import 'package:flutter/material.dart';

class productPriceText extends StatelessWidget {
  const productPriceText(
      {super.key,
      required this.priceText,
      this.maxLines = 1,
      this.textAlign = TextAlign.left,
      this.currencySign = "\$",
      this.isLarge = false,
      this.lineThrough = false});

  final String currencySign, priceText;
  final int maxLines;
  final TextAlign textAlign;
  final bool isLarge, lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + priceText,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: lineThrough ? TextDecoration.lineThrough : null),
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}
