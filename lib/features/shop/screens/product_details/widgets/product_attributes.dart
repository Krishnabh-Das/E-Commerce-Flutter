import 'package:ecommerce/common/widgets/chips/choice_chip.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/product_price_text.dart';
import 'package:ecommerce/common/widgets/texts/product_title_text.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class productAttributes extends StatelessWidget {
  const productAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        const SizedBox(
          height: MyAppSizes.spaceBtwItems,
        ),

        // Attributes Pricing and Description
        roundedContainer(
          padding: EdgeInsets.all(MyAppSizes.md),
          backgroundColor: dark ? MyAppColors.darkerGrey : MyAppColors.grey,
          child: Column(
            children: [
              // Title, Price & Stock Price
              Row(
                children: [
                  sectionHeading(
                    title: "Variation",
                    showActionButton: false,
                  ),
                  SizedBox(
                    width: MyAppSizes.spaceBtwItems,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          productTitleText(
                            title: "Price :  ",
                          ),

                          // Actual Price
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),

                          SizedBox(
                            width: MyAppSizes.spaceBtwItems / 2,
                          ),

                          // Sale Price
                          productPriceText(
                            priceText: "20",
                            isLarge: true,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          productTitleText(title: "Stock : "),
                          Text(
                            "In Stock",
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),

              SizedBox(
                height: MyAppSizes.spaceBtwItems / 2.5,
              ),

              // Variation Description
              productTitleText(
                title:
                    "Dekho mai baitha huh kismat ke bharose, kismat mai hoga toh paisa khud chalke aayega.",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),

        SizedBox(
          height: MyAppSizes.spaceBtwItems,
        ),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionHeading(
              title: "Colors",
              onPressed: () {},
            ),
            const SizedBox(
              height: MyAppSizes.spaceBtwItems / 4,
            ),
            Wrap(
              children: [
                choiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'Red',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'Blue',
                  selected: true,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'Pink',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwItems / 2,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionHeading(
              title: "Size",
              onPressed: () {},
            ),
            const SizedBox(
              height: MyAppSizes.spaceBtwItems / 4,
            ),
            Wrap(
              spacing: 10,
              children: [
                choiceChip(
                  text: 'EU 34',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'EU 38',
                  selected: true,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'EU 45',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'EU 34',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'EU 45',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'EU 34',
                  selected: false,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'EU 38',
                  selected: true,
                  onSelected: (value) {},
                ),
                choiceChip(
                  text: 'EU 45',
                  selected: true,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwSections,
        )
      ],
    );
  }
}
