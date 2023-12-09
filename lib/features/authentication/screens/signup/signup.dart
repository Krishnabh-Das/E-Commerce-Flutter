import 'package:ecommerce/common/styles/divider_style.dart';
import 'package:ecommerce/common/styles/social_button.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MyAppSizes.defaultSpace * 0.8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(
                MyAppTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: MyAppSizes.spaceBtwSections,
              ),

              /// Form
              const signupForm(),

              const SizedBox(
                height: MyAppSizes.spaceBtwSections,
              ),

              /// Divider
              dividerStyle(
                  dark: dark, dividerText: MyAppTexts.orSignupWith.capitalize!),

              const SizedBox(
                height: MyAppSizes.spaceBtwSections * 0.8,
              ),

              /// Social Buttons
              const socialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
