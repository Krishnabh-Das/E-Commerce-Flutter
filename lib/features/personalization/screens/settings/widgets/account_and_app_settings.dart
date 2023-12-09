import 'package:ecommerce/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class accountAndAppSettings extends StatelessWidget {
  const accountAndAppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        settingsMenuTile(
          icon: Iconsax.safe_home,
          Title: "My Addresses",
          subtitle: "Set shopping delivery address",
          onTap: () {},
        ),
        settingsMenuTile(
          icon: Iconsax.shopping_cart,
          Title: "My Cart",
          subtitle: "Add, remove products and move to checkout",
          onTap: () {},
        ),
        settingsMenuTile(
          icon: Iconsax.bag_tick,
          Title: "My Orders",
          subtitle: "In-progress and Completed Orders",
          onTap: () {},
        ),
        settingsMenuTile(
          icon: Iconsax.bank,
          Title: "Bank Account",
          subtitle: "Withdraw balance to registered bank account",
          onTap: () {},
        ),
        settingsMenuTile(
          icon: Iconsax.discount_shape,
          Title: "My Coupons",
          subtitle: "List of all the discounted coupons",
          onTap: () {},
        ),
        settingsMenuTile(
          icon: Iconsax.notification,
          Title: "Notifications",
          subtitle: "Set any kind of notification message",
          onTap: () {},
        ),
        settingsMenuTile(
          icon: Iconsax.security_card,
          Title: "Account Privacy",
          subtitle: "Mnage data usage and connected accounts",
          onTap: () {},
        ),

        // App Settings
        const SizedBox(
          height: MyAppSizes.spaceBtwSections,
        ),
        const sectionHeading(
          title: "App Settings",
          showActionButton: false,
        ),
        const SizedBox(
          height: MyAppSizes.spaceBtwItems,
        ),
        const settingsMenuTile(
            icon: Iconsax.document_upload,
            Title: "Load Data",
            subtitle: "Upload Data to your Cloud Firebase"),
        settingsMenuTile(
          icon: Iconsax.location,
          Title: "Geolocation",
          subtitle: "Set recommendation based on location",
          trailing: Switch(
            value: true,
            onChanged: (value) {},
          ),
        ),
        settingsMenuTile(
          icon: Iconsax.security_user,
          Title: "Safe Mode",
          subtitle: "Search result is safe for all pages",
          trailing: Switch(
            value: false,
            onChanged: (value) {},
          ),
        ),
        settingsMenuTile(
          icon: Iconsax.image,
          Title: "HD Image Quality",
          subtitle: "Set image quality to be seen",
          trailing: Switch(
            value: false,
            onChanged: (value) {},
          ),
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwSections,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Logout",
                style: Theme.of(context).textTheme.headlineSmall,
              )),
        ),
        const SizedBox(
          height: MyAppSizes.spaceBtwSections,
        ),
      ],
    );
  }
}
