// ignore: file_names
import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
class MaranathaRoundedContainer extends StatelessWidget {
  const MaranathaRoundedContainer({
    super.key, 
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = MaranathaSizes.cardRadiusLg,
    this.backgroundColor =MaranathaColors.white,
    this.borderColor = MaranathaColors.borderPrimary
    
    
    });
    final double? width;
    final double? height;
    final double radius;
    final Widget? child;
    final bool showBorder;
    final Color borderColor;
    final Color backgroundColor;
    final EdgeInsetsGeometry? padding;
    final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null
      ),
      child: child,
    );
  }
}