import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class orderListItems extends StatelessWidget {
  const orderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = MyAppHelperFunctions.isDarkMode(context);

    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      separatorBuilder: (_, __) => SizedBox(
        height: MyAppSizes.spaceBtwItems,
      ),
      itemBuilder: (_, index) => roundedContainer(
        showBorder: true,
        padding: EdgeInsets.all(MyAppSizes.md),
        backgroundColor: dark ? MyAppColors.dark : MyAppColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// Row 1
            Row(
              children: [
                // Icon
                Icon(Iconsax.ship),
                SizedBox(
                  width: MyAppSizes.spaceBtwItems / 2,
                ),

                // Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Processing",
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                            color: MyAppColors.primary, fontWeightDelta: 1),
                      ),
                      Text("07 Nov 2024",
                          style: Theme.of(context).textTheme.headlineSmall),
                    ],
                  ),
                ),

                // Icon
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.arrow_right_34,
                      size: MyAppSizes.iconSm * 1.3,
                    ))
              ],
            ),

            SizedBox(
              height: MyAppSizes.spaceBtwItems,
            ),

            /// Row 2
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      Icon(Iconsax.tag),
                      SizedBox(
                        width: MyAppSizes.spaceBtwItems / 2,
                      ),

                      // Status & Date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Order",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .apply(
                                      color: MyAppColors.primary,
                                      fontWeightDelta: 1),
                            ),
                            Text("[#256f2]",
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      // Icon
                      Icon(Iconsax.calendar),
                      SizedBox(
                        width: MyAppSizes.spaceBtwItems / 2,
                      ),

                      // Status & Date
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shipping Date",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .apply(
                                      color: MyAppColors.primary,
                                      fontWeightDelta: 1),
                            ),
                            Text("03 Feb 2025",
                                style:
                                    Theme.of(context).textTheme.headlineSmall),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
