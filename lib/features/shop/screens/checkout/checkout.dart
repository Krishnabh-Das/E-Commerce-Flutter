import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:ecommerce/common/widgets/products/cart/coupon.dart';
import 'package:ecommerce/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:ecommerce/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = MyAppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: appBar(
        actions: [],
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpace),
          child: Column(
            children: [
              // Items in Cart
              cartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(height: MyAppSizes.spaceBtwSections),

              // Coupon
              couponCode(),
              const SizedBox(height: MyAppSizes.spaceBtwSections),

              // Billing Section
              roundedContainer(
                showBorder: true,
                backgroundColor:
                    dark ? MyAppColors.black : MyAppColors.textWhite,
                child: Padding(
                  padding: const EdgeInsets.all(MyAppSizes.defaultSpace / 1.3),
                  child: Column(
                    children: [
                      // Pricing
                      billingAmountSection(),
                      const SizedBox(height: MyAppSizes.spaceBtwItems),

                      // Divider
                      Divider(),
                      const SizedBox(height: MyAppSizes.spaceBtwItems / 1.5),

                      // Payment Methods
                      billingPaymentSection(),
                      const SizedBox(height: MyAppSizes.spaceBtwItems),

                      // Address
                      billingAddressSection(),
                      const SizedBox(height: MyAppSizes.spaceBtwItems),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const checkout()),
          child: Text("Checkout  \$1000.0",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600)),
        ),
      ),
    );
  }
}
