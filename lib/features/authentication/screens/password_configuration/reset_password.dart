import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class resetPassword extends StatelessWidget {
  const resetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(), icon: Icon(Icons.cancel_sharp))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(MyAppImages.success),
                width: MyAppHelperFunctions.screenWidth(),
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwSections,
              ),

              /// Title & Subtitle
              Text(
                MyAppTexts.changeYourPasswordTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 22),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),
              Text(
                MyAppTexts.changeYourPasswordSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        MyAppTexts.done,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: MyAppColors.textWhite),
                      ))),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),
              TextButton(onPressed: () {}, child: Text(MyAppTexts.resendEmail))
            ],
          ),
        ),
      ),
    );
  }
}
