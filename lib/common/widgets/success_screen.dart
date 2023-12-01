import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class successScreen extends StatelessWidget {
  const successScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => loginScreen()),
              icon: Icon(Icons.cancel_sharp))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                  width: MyAppHelperFunctions.screenWidth(),
                  image: AssetImage(image)),
              SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),

              /// Title & Sub-Title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: Text(
                    MyAppTexts.MyAppcontinue,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: MyAppColors.textWhite),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
