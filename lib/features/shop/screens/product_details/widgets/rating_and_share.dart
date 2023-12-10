import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ratingAndShare extends StatelessWidget {
  const ratingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Rating
        Row(
          children: [
            const Icon(
              Iconsax.star5,
              color: MyAppColors.amber,
              size: 24,
            ),
            const SizedBox(
              width: MyAppSizes.spaceBtwItems / 2,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "5.0", style: Theme.of(context).textTheme.bodyLarge),
              TextSpan(
                  text: " (199)", style: Theme.of(context).textTheme.bodyLarge),
            ])),
          ],
        ),

        // Share
        IconButton(onPressed: () {}, icon: const Icon(Icons.share))
      ],
    );
  }
}
