import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class singleAddress extends StatelessWidget {
  const singleAddress({super.key, this.selectedAddress = false});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return roundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(MyAppSizes.md),
      borderColor: selectedAddress
          ? MyAppColors.transperant
          : dark
              ? MyAppColors.grey.withOpacity(0.75)
              : MyAppColors.darkGrey,
      backgroundColor: selectedAddress
          ? dark
              ? MyAppColors.primary.withOpacity(0.9)
              : MyAppColors.primary.withOpacity(0.65)
          : MyAppColors.transperant,
      margin: const EdgeInsets.only(bottom: MyAppSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                      ? MyAppColors.light
                      : MyAppColors.dark.withOpacity(0.7)
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: MyAppSizes.sm / 2,
                  ),
                  const Text(
                    "+91 9954148353",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              Text(
                "123 Main Street, Springfield, Lane 23, IL 62701, USA",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontSize: 15),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: MyAppSizes.sm / 2,
              ),
            ],
          )
        ],
      ),
    );
  }
}
