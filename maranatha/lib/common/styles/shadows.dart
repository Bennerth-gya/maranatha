import 'package:flutter/material.dart';
import 'package:maranatha/utils/constants/colors.dart';

class MaranathaShadowStyle{
  static final verticalProductShadow = BoxShadow(
    color: MaranathaColors.darkerGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
    color: MaranathaColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}