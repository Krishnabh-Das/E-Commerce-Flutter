import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edge.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/personalization/screens/profile/profile.dart';
import 'package:ecommerce/features/personalization/screens/settings/widgets/account_and_app_settings.dart';
import 'package:ecommerce/features/personalization/screens/settings/widgets/profile_card.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class settingsScreen extends StatelessWidget {
  const settingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              expandedHeight: 180,
              flexibleSpace: ClipPath(
                clipper: customCurveEdge(),
                child: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Container(
                        color: MyAppColors.primary,
                        child: profileCard(
                          onPressed: () => Get.to(() => const profile()),
                        ),
                      ),
                      Positioned(
                        top: -150,
                        right: -250,
                        child: IgnorePointer(
                          child: circularContainer(
                            backgroundColor:
                                MyAppColors.textWhite.withOpacity(0.1),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 100,
                        right: -300,
                        child: IgnorePointer(
                          child: circularContainer(
                            backgroundColor:
                                MyAppColors.textWhite.withOpacity(0.1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ];
        },

        // --Body
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(MyAppSizes.defaultSpace / 1.2),
            child: Column(
              children: [
                // Account Settings
                sectionHeading(
                  title: "Account Settings",
                  showActionButton: false,
                ),
                SizedBox(
                  height: MyAppSizes.spaceBtwItems * 1.3,
                ),

                accountAndAppSettings(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
