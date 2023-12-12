import 'package:ecommerce/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:flutter/material.dart';

class overallProductRating extends StatelessWidget {
  const overallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "4.8",
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              ratingProgressIndicator(
                text: "5",
                value: 0.9,
              ),
              ratingProgressIndicator(
                text: "4",
                value: 0.7,
              ),
              ratingProgressIndicator(
                text: "3",
                value: 0.5,
              ),
              ratingProgressIndicator(
                text: "2",
                value: 0.3,
              ),
              ratingProgressIndicator(
                text: "1",
                value: 0.15,
              ),
            ],
          ),
        )
      ],
    );
  }
}
