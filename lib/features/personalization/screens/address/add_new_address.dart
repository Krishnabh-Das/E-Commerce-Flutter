import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class addNewAddress extends StatelessWidget {
  const addNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
          actions: const [],
          showBackArrow: true,
          title: Text(
            "Add new Address",
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 22),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(MyAppSizes.defaultSpace),
            child: Form(
              child: Column(children: [
                SizedBox(
                  height: MyAppSizes.textFormFieldHeight,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: "Name",
                    ),
                  ),
                ),
                const SizedBox(
                  height: MyAppSizes.spaceBtwInputFields,
                ),
                SizedBox(
                  height: MyAppSizes.textFormFieldHeight,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: "Phone Number",
                    ),
                  ),
                ),
                const SizedBox(
                  height: MyAppSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: MyAppSizes.textFormFieldHeight,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.building_31,
                            ),
                            labelText: "Street",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: MyAppSizes.spaceBtwInputFields,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: MyAppSizes.textFormFieldHeight,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.code),
                            labelText: "Postal Code",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: MyAppSizes.spaceBtwInputFields,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: MyAppSizes.textFormFieldHeight,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.building),
                            labelText: "City",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: MyAppSizes.spaceBtwInputFields,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: MyAppSizes.textFormFieldHeight,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.activity),
                            labelText: "State",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: MyAppSizes.spaceBtwInputFields,
                ),
                SizedBox(
                  height: MyAppSizes.textFormFieldHeight,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.global),
                      labelText: "Country",
                    ),
                  ),
                ),
                const SizedBox(
                  height: MyAppSizes.defaultSpace,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Save",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: MyAppColors.textWhite,
                              ))),
                )
              ]),
            ),
          ),
        ));
  }
}
