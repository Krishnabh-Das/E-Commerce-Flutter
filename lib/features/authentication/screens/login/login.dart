import 'package:ecommerce/common/styles/divider_style.dart';
import 'package:ecommerce/common/styles/social_button.dart';
import 'package:ecommerce/common/styles/spacing_styles.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
            padding: MyAppSpacingStyles.paddingWithAppBarHeight,
            child: Column(
              children: [
                /// Logo, Title & Sub-Title
                loginHeader(dark: dark),

                ///Form
                loginForm(),

                /// Divider
                dividerStyle(
                    dark: dark,
                    dividerText: MyAppTexts.orSignInWith.capitalize!),

                const SizedBox(
                  height: MyAppSizes.spaceBtwItems,
                ),

                /// Footer
                socialButton(),
              ],
            )),
      ),
    );
  }
}
