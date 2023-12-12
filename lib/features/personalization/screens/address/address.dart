import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerce/features/personalization/screens/address/widgets/single_address.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class address extends StatelessWidget {
  const address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(() => const addNewAddress()),
        backgroundColor: MyAppColors.primary,
        child: const Icon(
          Iconsax.add,
          size: 35,
          color: MyAppColors.textWhite,
        ),
      ),
      appBar: appBar(
          actions: const [],
          showBackArrow: true,
          title: Text(
            "Addresses",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 22),
          )),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MyAppSizes.defaultSpace / 1.5),
          child: Column(
            children: [
              singleAddress(),
              singleAddress(selectedAddress: true),
              singleAddress(),
              singleAddress(),
              singleAddress(),
              singleAddress(),
              singleAddress(),
            ],
          ),
        ),
      ),
    );
  }
}
