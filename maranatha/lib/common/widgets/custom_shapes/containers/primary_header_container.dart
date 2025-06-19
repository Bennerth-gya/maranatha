import 'package:flutter/material.dart';
import 'package:maranatha/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:maranatha/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:maranatha/utils/constants/colors.dart';


class MaranathaPrimaryHeaderContainer extends StatelessWidget {
  const MaranathaPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaranathaCurvedEdgesWidget(
      
        child: Container(
          color: MaranathaColors.primaryColor,
          child: Stack(
            children: [
              // Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: MaranathaCircularContainer(
                  backgroundColor: MaranathaColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      );
  }
}
