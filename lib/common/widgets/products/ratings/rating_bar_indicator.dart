import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

class ratingBarIndicator extends StatelessWidget {
  const ratingBarIndicator({
    super.key,
    required this.rating,
    this.itemSize = 18,
  });

  final double rating;
  final double itemSize;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemBuilder: (_, __) => const Icon(
        Iconsax.star1,
        color: MyAppColors.amber,
      ),
      itemSize: itemSize,
      rating: rating,
      unratedColor: MyAppColors.grey,
    );
  }
}
