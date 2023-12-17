import 'package:ecommerce/common/widgets/appbar/appbar.dart';
import 'package:ecommerce/features/shop/screens/order/widget/orders_list.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        showBackArrow: true,
        title: Text("My Orders",
            style: Theme.of(context).textTheme.headlineMedium),
        actions: [],
      ),
      body: Padding(
        padding: EdgeInsets.all(MyAppSizes.defaultSpace),
        child: orderListItems(),
      ),
    );
  }
}
