import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_image_slider.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/features/shop/screens/product_details/widgets/rating_and_share.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class productDetails extends StatelessWidget {
  const productDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
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
            body: const Padding(
              padding: EdgeInsets.only(
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
                  // Checkout Button
                  // Description
                  // Reviews
                ],
              ),
            )));
  }
}
