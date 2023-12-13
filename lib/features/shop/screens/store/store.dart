import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/store/widgets/category_tab.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: dark ? MyAppColors.black : MyAppColors.textWhite,
        appBar: appBar(
            title: Text(
              "Store",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            actions: [
              cartCounterIcon(
                iconColor: dark ? MyAppColors.light : MyAppColors.dark,
              )
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
                    expandedHeight: 410,
                    flexibleSpace: Padding(
                      padding: const EdgeInsets.fromLTRB(
                          MyAppSizes.defaultSpace / 1.5,
                          5,
                          MyAppSizes.defaultSpace / 1.5,
                          MyAppSizes.defaultSpace / 1.5),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        children: [
                          const SizedBox(
                            height: MyAppSizes.spaceBtwItems,
                          ),

                          /// Search Bar
                          searchContainer(
                            text: "Search in Store",
                            showBackground: false,
                            onTap: () {},
                            padding: EdgeInsets.zero,
                          ),

                          const SizedBox(
                            height: MyAppSizes.spaceBtwSections / 1.7,
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
                                return const brandCard(
                                  image: MyAppImages.githubLightLogo,
                                  title: 'Nike',
                                );
                              })
                        ],
                      ),
                    ),
                    bottom: const tabBar(
                      tabs: [
                        Tab(child: Text("Sports")),
                        Tab(child: Text("Furniture")),
                        Tab(child: Text("Electronics")),
                        Tab(child: Text("Clothes")),
                        Tab(child: Text("Cosmetics")),
                      ],
                    ))
              ];
            },
            body: const TabBarView(
              children: [
                categoryTab(),
                categoryTab(),
                categoryTab(),
                categoryTab(),
                categoryTab(),
              ],
            )),
      ),
    );
  }
}
