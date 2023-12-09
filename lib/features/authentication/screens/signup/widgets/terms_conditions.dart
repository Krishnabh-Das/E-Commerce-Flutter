import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class signupTermsConditions extends StatelessWidget {
  const signupTermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyAppHelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: 1,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        RichText(
            text: TextSpan(children: <TextSpan>[
          TextSpan(
              text: MyAppTexts.iAgreeTo,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 12)),
          TextSpan(
              text: " ${MyAppTexts.privacyPolicy} ",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                    color: dark ? MyAppColors.textWhite : MyAppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? MyAppColors.textWhite : MyAppColors.primary,
                  )
                  .copyWith(fontSize: 13)),
          TextSpan(
              text: "${MyAppTexts.and} ",
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: MyAppTexts.termsOfUse,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(
                    color: dark ? MyAppColors.textWhite : MyAppColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor:
                        dark ? MyAppColors.textWhite : MyAppColors.primary,
                  )
                  .copyWith(fontSize: 13)),
        ]))
      ],
    );
  }
}
