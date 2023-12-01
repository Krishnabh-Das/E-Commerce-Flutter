import 'package:ecommerce/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup.dart';
import 'package:ecommerce/navigation_menu.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class loginForm extends StatelessWidget {
  const loginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: MyAppSizes.spaceBtwSections * 0.6),
        child: Column(
          children: [
            ///Email
            SizedBox(
              height: MyAppSizes.textFormFieldHeight,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: MyAppTexts.email),
              ),
            ),
            const SizedBox(height: MyAppSizes.spaceBtwInputFields),
            SizedBox(
              height: MyAppSizes.textFormFieldHeight,
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: MyAppTexts.password,
                    suffixIcon: Icon(Icons.remove_red_eye)),
              ),
            ),
            const SizedBox(
              height: MyAppSizes.spaceBtwInputFields / 2,
            ),

            /// Remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(MyAppTexts.rememberMe),
                  ],
                ),

                /// Forget Password
                TextButton(
                    onPressed: () => Get.to(() => const forgotPassword()),
                    child: const Text(MyAppTexts.forgetPassword)),
              ],
            ),

            const SizedBox(
              height: MyAppSizes.spaceBtwItems * 0.5,
            ),

            /// Sign In Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.off(() => navigationMenu()),
                    child: const Text(MyAppTexts.signIn))),

            const SizedBox(
              height: MyAppSizes.spaceBtwInputFields,
            ),

            /// Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const signup()),
                    child: const Text(MyAppTexts.createAccount))),
            const SizedBox(
              height: MyAppSizes.spaceBtwItems * 0.2,
            )
          ],
        ),
      ),
    );
  }
}
