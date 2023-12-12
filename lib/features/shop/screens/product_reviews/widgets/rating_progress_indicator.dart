import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ratingProgressIndicator extends StatelessWidget {
  const ratingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: MyAppHelperFunctions.screenWidth() * 0.5,
            child: LinearProgressIndicator(
              backgroundColor: MyAppColors.grey,
              value: value,
              borderRadius: BorderRadius.circular(7),
              minHeight: 11,
              valueColor: const AlwaysStoppedAnimation(MyAppColors.primary),
            ),
          ),
        )
      ],
    );
  }
}
