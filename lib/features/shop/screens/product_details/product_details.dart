import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_add_to_cart_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class productDetails extends StatelessWidget {
  const productDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: bottomAddToCart(),
        body: NestedScrollView(
            headerSliverBuilder: (_, innnerBoxIsScrolled) {
              return [
                const SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 420,
                  flexibleSpace: curvedEdgeWidget(
                    child: FlexibleSpaceBar(
                      background: productImageSlider(),
                    ),
                  ),
                )
              ];
            },

            /// Details
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    right: MyAppSizes.defaultSpace,
                    left: MyAppSizes.defaultSpace,
                    bottom: MyAppSizes.defaultSpace),
                child: Column(
                  children: [
                    // Rating & Share
                    ratingAndShare(),

                    // Price, Title, Stock & Brand
                    productMetaData(),

                    // Attributes
                    productAttributes(),

                    // Checkout Button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Checkout",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .apply(color: MyAppColors.textWhite),
                            ))),
                    const SizedBox(
                      height: MyAppSizes.spaceBtwSections * 1.3,
                    ),

                    // Description
                    sectionHeading(
                      title: "Description",
                      showActionButton: false,
                    ),
                    const SizedBox(
                      height: MyAppSizes.spaceBtwItems,
                    ),
                    ReadMoreText(
                      "Have you ever wondered why does your gf says no when you force her, because she is not hormny enough. This is a life changing product, that will make your gf horny. Are you ready to dive deep inside your gf's pussy.",
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimExpandedText: "Show Less",
                      trimCollapsedText: "Show More",
                      moreStyle: TextStyle(fontWeight: FontWeight.bold),
                      lessStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: MyAppSizes.spaceBtwItems / 2,
                    ),
                    Divider(),

                    // Reviews
                    const SizedBox(
                      height: MyAppSizes.spaceBtwItems,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        sectionHeading(
                          title: "Reviews (199)",
                          showActionButton: false,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Iconsax.arrow_right_34))
                      ],
                    ),
                    const SizedBox(
                      height: MyAppSizes.spaceBtwSections,
                    ),
                  ],
                ),
              ),
            )));
  }
}
