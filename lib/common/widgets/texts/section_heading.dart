import 'package:flutter/material.dart';

class sectionHeading extends StatelessWidget {
  const sectionHeading({
    super.key,
    required this.title,
    this.buttonTitle = "View All",
    this.showActionButton = true,
    this.textColor,
    this.onPressed,
  });

  final String title, buttonTitle;
  final bool showActionButton;
  final Color? textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: onPressed, child: Text(buttonTitle)),
      ],
    );
  }
}
