import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/image_shape/circular_image.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        showBackArrow: true,
        actions: const [],
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
          child: Column(
            children: [
              ///Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const circularImage(
                      image: MyAppImages.profile,
                      width: 100,
                      height: 100,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),

              /// Details
              const SizedBox(
                height: MyAppSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),
              const sectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),

              profileMenu(
                title: "Name",
                value: "Krishnabh Das",
                onPressed: () {},
              ),
              profileMenu(
                title: "Username",
                value: "Gladiator",
                onPressed: () {},
              ),

              const SizedBox(
                height: MyAppSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),

              const sectionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),
              profileMenu(
                title: "User ID",
                value: "45689",
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              profileMenu(
                title: "E-Mail",
                value: "gladiator5678@gmail.com",
                onPressed: () {},
              ),
              profileMenu(
                title: "Phone Number",
                value: "+91 9954148353",
                onPressed: () {},
              ),
              profileMenu(
                title: "Gender",
                value: "Male",
                onPressed: () {},
              ),
              profileMenu(
                title: "Date of Birth",
                value: "11 Sept, 2003",
                onPressed: () {},
              ),

              const Divider(),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),

              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Close Account ",
                    style: TextStyle(color: MyAppColors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
