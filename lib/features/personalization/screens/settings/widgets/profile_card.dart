import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/list_tiles/user_profile_tile.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class profileCard extends StatelessWidget {
  const profileCard({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // App Bar
        appBar(
          actions: const [],
          title: Text(
            "Account",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .apply(color: MyAppColors.textWhite),
          ),
        ),
        const SizedBox(
          height: MyAppSizes.spaceBtwItems / 2.5,
        ),
        userProfileTile(
          onPressed: onPressed,
        ),
        const SizedBox(
          height: MyAppSizes.spaceBtwSections,
        ),
      ],
    );
  }
}
