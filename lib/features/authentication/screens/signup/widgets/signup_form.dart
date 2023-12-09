import 'package:ecommerce/features/authentication/screens/signup/verify_email.dart';
import 'package:ecommerce/features/authentication/screens/signup/widgets/terms_conditions.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class signupForm extends StatelessWidget {
  const signupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);

    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: MyAppSizes.textFormFieldHeight,
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: MyAppTexts.firstName,
                      prefixIcon: Icon(Iconsax.personalcard)),
                ),
              ),
            ),
            const SizedBox(
              width: MyAppSizes.spaceBtwInputFields * 0.7,
            ),
            Expanded(
              child: SizedBox(
                height: MyAppSizes.textFormFieldHeight,
                child: TextFormField(
                  decoration: const InputDecoration(
                      labelText: MyAppTexts.lastName,
                      prefixIcon: Icon(Iconsax.personalcard)),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        /// E-Mail
        SizedBox(
          height: MyAppSizes.textFormFieldHeight,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                labelText: MyAppTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),
          ),
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        /// Phone Number
        SizedBox(
          height: MyAppSizes.textFormFieldHeight,
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                labelText: MyAppTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
        ),
        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        /// Password
        SizedBox(
          height: MyAppSizes.textFormFieldHeight,
          child: TextFormField(
            obscureText: true,
            obscuringCharacter: "*",
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
                labelText: MyAppTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
        ),

        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        /// Terms & Condition Checkbox
        const signupTermsConditions(),

        const SizedBox(
          height: MyAppSizes.spaceBtwInputFields,
        ),

        /// Create Account Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Get.to(() => const verifyEmailScreen()),
            child: Text(
              MyAppTexts.createAccount,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: MyAppColors.textWhite),
            ),
          ),
        )
      ],
    ));
  }
}
