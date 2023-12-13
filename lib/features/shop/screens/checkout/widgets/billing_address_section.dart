import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class billingAddressSection extends StatelessWidget {
  const billingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sectionHeading(
          title: "Shipping Address",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text("Gladiator",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.w500, fontSize: 16)),
        const SizedBox(height: MyAppSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            Icon(
              Icons.phone,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: MyAppSizes.spaceBtwItems),
            Text(
              "+91 9954148353",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: MyAppSizes.spaceBtwItems / 2),
        Row(
          children: [
            Icon(
              Icons.location_history,
              color: Colors.grey,
              size: 16,
            ),
            const SizedBox(width: MyAppSizes.spaceBtwItems),
            Expanded(
              child: Text(
                "South Line, Maine 97645, USA",
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
