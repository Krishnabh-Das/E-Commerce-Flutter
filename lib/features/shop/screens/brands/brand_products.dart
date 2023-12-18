import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/brands/brand_card.dart';
import 'package:ecommerce/common/widgets/products/cart/sortable_products.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        showBackArrow: true,
        actions: const [],
        title: Text(
          "Nike",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpace / 1.5),
          child: Column(
            children: [
              /// Brand Details
              brandCard(
                showBorder: true,
              ),
              const SizedBox(height: MyAppSizes.spaceBtwItems),

              sortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
