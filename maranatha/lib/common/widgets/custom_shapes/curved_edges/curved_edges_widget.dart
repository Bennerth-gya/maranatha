import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class MaranathaCurvedEdgesWidget extends StatelessWidget {
  const MaranathaCurvedEdgesWidget({
    super.key, this.child
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MaranathaCustomCurvedEdges(),
      child: child
    );
  }
}
