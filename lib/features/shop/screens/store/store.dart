import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/image_shape/circular_image.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/texts/brand_title_with_verfiedIcon.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/enums.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: appBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            cartCounterIcon(
                iconColor: dark ? MyAppColors.light : MyAppColors.dark,
                onPressed: () {})
          ]),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: true,
                pinned: true,
                floating: true,
                backgroundColor:
                    dark ? MyAppColors.black : MyAppColors.textWhite,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(MyAppSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      /// Search Bar
                      SizedBox(
                        height: MyAppSizes.spaceBtwItems,
                      ),
                      searchContainer(
                        text: "Search in Store",
                        showBackground: false,
                        onTap: () {},
                        padding: EdgeInsets.zero,
                      ),
                      SizedBox(
                        height: MyAppSizes.spaceBtwSections,
                      ),

                      /// Feature Brands
                      sectionHeading(
                        title: "Feature Brands",
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: MyAppSizes.spaceBtwItems / 1.5,
                      ),

                      gridLayout(
                          itemCount: 4,
                          extendMainAxis: 80,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: roundedContainer(
                                padding: EdgeInsets.all(MyAppSizes.sm),
                                showBorder: true,
                                backgroundColor: MyAppColors.transperant,
                                child: Row(
                                  children: [
                                    // Icon
                                    Flexible(
                                      child: circularImage(
                                        image: MyAppImages.githubLightLogo,
                                        backgroundColor: Colors.transparent,
                                        overlayColor: dark
                                            ? MyAppColors.light
                                            : MyAppColors.dark,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: MyAppSizes.spaceBtwItems / 3,
                                    ),
                                    // Text
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          brandTitleWithVerification(
                                            title: "Nike",
                                            brandTextSize: TextSizes.large,
                                          ),
                                          Text(
                                            "256 products",
                                            overflow: TextOverflow.ellipsis,
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}
