import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edge.dart';
import 'package:flutter/material.dart';

class curvedEdgeWidget extends StatelessWidget {
  const curvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: customCurveEdge(),
      child: child,
    );
  }
}
