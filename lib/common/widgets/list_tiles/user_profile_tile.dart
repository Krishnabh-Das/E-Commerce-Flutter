import 'package:ecommerce/common/widgets/image_shape/circular_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class userProfileTile extends StatelessWidget {
  const userProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const circularImage(
        image: MyAppImages.googleLogo,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        "Gladiator",
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: MyAppColors.textWhite),
      ),
      subtitle: Text(
        "gladiator5678@gmail.com",
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: MyAppColors.textWhite),
      ),
      trailing: const Icon(
        Iconsax.edit,
        color: MyAppColors.textWhite,
      ),
    );
  }
}
