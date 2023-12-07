import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/image_shape/rounded_image.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class promoSlider extends StatelessWidget {
  promoSlider({super.key, required this.banners, required this.controller});

  final controller;
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 1),
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => roundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(
          height: MyAppSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < banners.length; i++)
                circularContainer(
                  height: 4.5,
                  width: controller.carousalCurrentIndex == i ? 45 : 25,
                  backgroundColor: controller.carousalCurrentIndex == i
                      ? MyAppColors.primary
                      : MyAppColors.grey,
                  margin: EdgeInsets.only(right: 5),
                ),
            ],
          ),
        )
      ],
    );
  }
}
