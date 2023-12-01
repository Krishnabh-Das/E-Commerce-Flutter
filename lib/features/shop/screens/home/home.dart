import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            primaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  homeAppBar()

                  // Search Bar
                  // Categories
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
