import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:ecommerce/common/widgets/icons/circular_icon.dart';
import 'package:ecommerce/common/widgets/image_shape/rounded_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class productImageSlider extends StatelessWidget {
  const productImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return curvedEdgeWidget(
        child: Container(
      color: dark ? MyAppColors.darkerGrey : MyAppColors.grey,
      child: Stack(children: [
        // Main Large Image
        const SizedBox(
            height: 445,
            child: Padding(
              padding: EdgeInsets.all(MyAppSizes.productImageRadius * 2),
              child:
                  Center(child: Image(image: AssetImage(MyAppImages.product3))),
            )),

        // App Bar
        const appBar(
          actions: [
            circularIcon(
              color: MyAppColors.red,
            )
          ],
          showBackArrow: true,
        ),

        // Image Slider
        Positioned(
          right: 0,
          left: 10,
          bottom: 30,
          child: SizedBox(
            height: 77,
            child: ListView.separated(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, __) => const SizedBox(
                width: MyAppSizes.spaceBtwItems / 1.3,
              ),
              itemCount: 5,
              itemBuilder: (_, index) => roundedImage(
                  backgroundColor: dark ? MyAppColors.dark : MyAppColors.light,
                  width: 77,
                  border: Border.all(color: MyAppColors.primary),
                  padding: const EdgeInsets.all(MyAppSizes.sm),
                  imageUrl: MyAppImages.product2),
            ),
          ),
        ),
      ]),
    ));
  }
}
