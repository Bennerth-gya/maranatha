import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/sizes.dart';


class MaranathaGridLayout extends StatelessWidget {
  const MaranathaGridLayout({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: MaranathaSizes.gridViewSpacing,
        crossAxisSpacing: MaranathaSizes.gridViewSpacing,
        ), 
        itemBuilder: itemBuilder
        );
  }
}
