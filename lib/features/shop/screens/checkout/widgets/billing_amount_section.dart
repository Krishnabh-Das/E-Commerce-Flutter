import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class billingPaymentSection extends StatelessWidget {
  const billingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = MyAppHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        sectionHeading(
          title: "Payment Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        const SizedBox(height: MyAppSizes.spaceBtwItems / 2),
        Row(
          children: [
            roundedContainer(
              width: 60,
              height: 45,
              backgroundColor: dark ? MyAppColors.light : MyAppColors.textWhite,
              padding: EdgeInsets.all(MyAppSizes.sm),
              child: Image(
                image: AssetImage(MyAppImages.paypal),
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: MyAppSizes.spaceBtwItems / 2),
            Text("Paypal", style: Theme.of(context).textTheme.bodyLarge)
          ],
        )
      ],
    );
  }
}
