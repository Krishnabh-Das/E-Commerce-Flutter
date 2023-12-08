import 'package:ecommerce/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class homeCategories extends StatelessWidget {
  const homeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.only(left: MyAppSizes.defaultSpace),
      child: Column(
        children: [
          /// Popular Categories
          const sectionHeading(
            title: "Popular Categories",
            showActionButton: false,
            textColor: MyAppColors.textWhite,
          ),

          const SizedBox(
            height: MyAppSizes.spaceBtwItems,
          ),

          /// List of Categories
          SizedBox(
            height: 84,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (_, index) {
                  return verticalImageText(
                    image: MyAppImages.shoes,
                    backgroundColor:
                        dark ? MyAppColors.dark : MyAppColors.textWhite,
                    title: 'Shoes',
                    onTap: () {},
                  );
                }),
          )
        ],
      ),
    );
  }
}
