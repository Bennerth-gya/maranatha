import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/colors.dart';
import 'package:maranatha/utils/constants/sizes.dart';
import 'package:maranatha/utils/helpers/helper_function.dart';


class MaranathaCircularIcon extends StatelessWidget {
  const MaranathaCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = MaranathaSizes.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,

  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
        ? backgroundColor!
        : MaranathaHelperFunctions.isDarkMode(context)
        ? MaranathaColors.black.withOpacity(0.9)
        : MaranathaColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100)
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color, size: size,)),
    );
  }
}
