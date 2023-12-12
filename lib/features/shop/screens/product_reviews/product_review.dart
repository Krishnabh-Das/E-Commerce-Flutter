import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/overall_product_rating.dart';
import 'package:ecommerce/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:ecommerce/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class productReviews extends StatelessWidget {
  const productReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
          title: Text(
            "Ratings & Reviews",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 22),
          ),
          actions: const [],
          showBackArrow: true,
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(MyAppSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "Ratings and reviews are verified and are from people who use the same type of device that you use"),

                SizedBox(
                  height: MyAppSizes.spaceBtwItems,
                ),

                // Overall Product Rating
                overallProductRating(),
                ratingBarIndicator(
                  rating: 4.7,
                ),
                Text(
                  " " '12611',
                ),

                SizedBox(
                  height: MyAppSizes.spaceBtwItems,
                ),

                // User Review List
                userReviewCard(),
                userReviewCard(),
                userReviewCard(),
                userReviewCard(),
              ],
            ),
          ),
        ));
  }
}
