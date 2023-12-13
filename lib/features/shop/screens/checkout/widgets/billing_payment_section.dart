import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class billingAmountSection extends StatelessWidget {
  const billingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Sub Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Subtotal",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "\$256.0",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(height: MyAppSizes.spaceBtwItems / 2),

        /// Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Shipping Fee",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "\$6.0",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(height: MyAppSizes.spaceBtwItems / 2),

        /// Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tax Fee",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              "\$0.65",
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        const SizedBox(height: MyAppSizes.spaceBtwItems / 1.5),

        /// Order Total
        /// Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Order Total",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              "\$262.65",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ],
    );
  }
}
