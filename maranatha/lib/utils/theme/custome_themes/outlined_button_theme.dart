import 'package:flutter/material.dart';

class MaranathaOutlinedButtonTheme{
  MaranathaOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.blue),
      textStyle: const TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.blue),
      textStyle: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );
}