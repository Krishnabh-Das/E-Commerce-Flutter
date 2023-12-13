import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class couponCode extends StatelessWidget {
  const couponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = MyAppHelperFunctions.isDarkMode(context);

    return roundedContainer(
      showBorder: true,
      backgroundColor: dark ? MyAppColors.dark : MyAppColors.textWhite,
      padding: EdgeInsets.only(
          top: MyAppSizes.sm,
          bottom: MyAppSizes.sm,
          right: MyAppSizes.sm,
          left: MyAppSizes.md),
      borderColor: MyAppColors.darkGrey,
      child: Row(
        children: [
          // Text Field
          Flexible(
            child: SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Have a promo code? Enter Here",
                  hintStyle:
                      TextStyle(color: MyAppColors.darkGrey, fontSize: 15),
                  border: const OutlineInputBorder().copyWith(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(
                        width: 0, color: MyAppColors.transperant),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
          ),

          // Button
          SizedBox(
              width: 80,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      foregroundColor: dark
                          ? MyAppColors.textWhite.withOpacity(0.5)
                          : MyAppColors.dark.withOpacity(0.5),
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      side: BorderSide(color: Colors.grey.withOpacity(0.1))),
                  child: Text("Apply")))
        ],
      ),
    );
  }
}
