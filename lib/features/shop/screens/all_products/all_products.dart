import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/cart/product_cart_vertical.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        showBackArrow: true,
        actions: [],
        title: Text(
          "All Products",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(MyAppSizes.defaultSpace / 1.6),
        child: Column(
          children: [
            /// Dropdown
            DropdownButtonFormField(
              items: [
                "Name",
                "Higher Price",
                "Lower Price",
                "Sale",
                "Newest",
                "Popularity"
              ]
                  .map((option) =>
                      DropdownMenuItem(value: option, child: Text(option)))
                  .toList(),
              onChanged: (value) {},
              decoration: InputDecoration(
                  constraints: BoxConstraints(minHeight: 14.0),
                  prefixIcon: Icon(Iconsax.sort)),
            ),
            const SizedBox(height: MyAppSizes.spaceBtwSections / 1.5),

            /// Products
            gridLayout(
                itemCount: 6, itemBuilder: (_, index) => productCartVertical())
          ],
        ),
      )),
    );
  }
}
