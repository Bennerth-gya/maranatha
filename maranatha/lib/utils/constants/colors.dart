import 'package:flutter/material.dart';

class MaranathaColors {
  MaranathaColors._();

  // <--------App Basic Colors ----------->
  static const Color primaryColor = Color(0xFF4868FF);
  static const Color secondaryColor = Color(0xFFFFE248);
  static const Color accent = Color(0xFFb0c7ff);


  // < ------ Gradient colors ---------->
  static const Gradient liinearGradient = LinearGradient(
    begin: Alignment(0.8, 0.8),
    end: Alignment(0.787, -0.787),
    colors: [
      Color(0xffff9a9c),
      Color(0xfffad8c4),
      Color(0xfffad8c4),
    ],
    );

  // <----------Text Colors ------------>
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // <-----------Background Colors---------->
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // <--------Background Container Colors ----->
  static const Color lightContainer = Color(0xFFF6F6F6);
  static final Color darkContainer = MaranathaColors.textWhite.withOpacity(0.1);

  // < -------Button Colors ----------->
  static const Color buttonPrimary = Color(0xFF4b68ff);
  static const Color buttonSecondary = Color(0xFF6C7570);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // < --------Border Colors ---------->
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // < --------Error and Validation Colors ------->
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info  = Color(0xFF1976D2);

  // < ----------Neutral Shades-------->
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softBery = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF); 
}
