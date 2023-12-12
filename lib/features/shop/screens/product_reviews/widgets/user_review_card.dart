import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/ratings/rating_bar_indicator.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_with_verfiedIcon.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class userReviewCard extends StatelessWidget {
  const userReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      dark ? MyAppColors.dark : MyAppColors.textWhite,
                  backgroundImage: const AssetImage(MyAppImages.person3),
                ),
                const SizedBox(
                  width: MyAppSizes.spaceBtwItems,
                ),
                Text(
                  "Momota Banerjee",
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(
          height: MyAppSizes.spaceBtwItems / 2,
        ),

        // Review
        Row(
          children: [
            const ratingBarIndicator(rating: 4.2),
            const SizedBox(
              width: MyAppSizes.spaceBtwItems,
            ),
            Text(
              "11 Nov, 2023",
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwItems,
        ),

        ReadMoreText(
          "I recently purchased a pair of Nike running shoes and I must say, they have exceeded my expectations! The first thing I noticed was the sleek design and the vibrant color, which I absolutely love. They're not just stylish, but also extremely comfortable.",
          trimLines: 2,
          trimExpandedText: "Show Less",
          trimCollapsedText: "Show More",
          trimMode: TrimMode.Line,
          moreStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: dark ? MyAppColors.textWhite : MyAppColors.black),
          lessStyle: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: dark ? MyAppColors.textWhite : MyAppColors.black),
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwItems,
        ),

        // Company Review
        roundedContainer(
          backgroundColor: dark ? MyAppColors.darkerGrey : MyAppColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(MyAppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    brandTitleWithVerification(
                      title: "Nike",
                      style: TextStyle(
                          fontSize: 15,
                          color:
                              dark ? MyAppColors.textWhite : MyAppColors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    const Text("12 Nov, 2023")
                  ],
                ),
                const SizedBox(
                  height: MyAppSizes.spaceBtwItems,
                ),
                ReadMoreText(
                  "Thank you for your wonderful review! We're thrilled to hear that you're enjoying your new Nike running shoes. At Nike, we strive to deliver not just quality products, but also a comfortable and stylish experience for our customers.",
                  trimLines: 2,
                  trimExpandedText: "Show Less",
                  trimCollapsedText: "Show More",
                  trimMode: TrimMode.Line,
                  moreStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: dark ? MyAppColors.textWhite : MyAppColors.black),
                  lessStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: dark ? MyAppColors.textWhite : MyAppColors.black),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: MyAppSizes.spaceBtwSections),
      ],
    );
  }
}
