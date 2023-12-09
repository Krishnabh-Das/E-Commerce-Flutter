import 'package:ecommerce/common/widgets/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/images_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class verifyEmailScreen extends StatelessWidget {
  const verifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const loginScreen()),
              icon: const Icon(Icons.cancel_sharp))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MyAppSizes.defaultSpace * 0.7),
          child: Column(
            children: [
              /// Image
              Image(
                  width: MyAppHelperFunctions.screenWidth(),
                  image: const AssetImage(MyAppImages.success)),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),

              /// Title & Sub-Title
              Text(
                MyAppTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),
              Text(
                "krishnabhdas3@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),
              Text(
                MyAppTexts.confirmEmailSubTitle,
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
                  onPressed: () => Get.to(() => successScreen(
                        image: MyAppImages.verifying,
                        title: MyAppTexts.yourAccountCreatedTitle,
                        subtitle: MyAppTexts.yourAccountCreatedSubTitle,
                        onPressed: () => Get.to(() => const loginScreen()),
                      )),
                  child: Text(MyAppTexts.MyAppcontinue,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: MyAppColors.textWhite)),
                ),
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(MyAppTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
