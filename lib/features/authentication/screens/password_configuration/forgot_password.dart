import 'package:ecommerce/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpace * 0.8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Headings
              Text(
                MyAppTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwItems,
              ),
              Text(
                MyAppTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwSections,
              ),

              ///Text Field
              SizedBox(
                height: MyAppSizes.textFormFieldHeight,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: MyAppTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right)),
                ),
              ),
              const SizedBox(
                height: MyAppSizes.spaceBtwSections * 0.7,
              ),

              ///Submit Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.off(() => resetPassword()),
                      child: Text(
                        MyAppTexts.submit,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: MyAppColors.textWhite),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
