import 'package:ecommerce/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class primaryHeaderContainer extends StatelessWidget {
  const primaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return curvedEdgeWidget(
      child: Container(
        color: MyAppColors.primary,
        child: SizedBox(
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: circularContainer(
                    backgroundColor: MyAppColors.textWhite.withOpacity(0.1)),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: circularContainer(
                    backgroundColor: MyAppColors.textWhite.withOpacity(0.1)),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
