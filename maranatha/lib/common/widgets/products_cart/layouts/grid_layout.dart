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
    final screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = 2;
    if (screenWidth >= 1200) {
      crossAxisCount = 6;
    } else if (screenWidth >= 900) {
      crossAxisCount = 4;
    }
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: MaranathaSizes.gridViewSpacing,
        crossAxisSpacing: MaranathaSizes.gridViewSpacing,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
