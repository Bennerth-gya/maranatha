import 'package:flutter/material.dart';
import 'package:maranatha/utils/theme/custome_themes/appbar_theme.dart';
import 'package:maranatha/utils/theme/custome_themes/bottom_sheet_theme.dart';
import 'package:maranatha/utils/theme/custome_themes/checkbox_theme.dart';
import 'package:maranatha/utils/theme/custome_themes/chip_theme.dart';
import 'package:maranatha/utils/theme/custome_themes/elevated_button_theme.dart';
import 'package:maranatha/utils/theme/custome_themes/outlined_button_theme.dart';
import 'package:maranatha/utils/theme/custome_themes/text_field_theme.dart';
import 'package:maranatha/utils/theme/custome_themes/text_theme.dart';

class MaranathaAppTheme {
  MaranathaAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: MaranathaTextTheme.lightTextTheme,
    chipTheme: MaranathaChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MaranathaAppBarTheme.lightAppBarTheme,
    checkboxTheme: MaranathaCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MaranathaBottonSheetTheme.LighBottomSheetTheme,
    elevatedButtonTheme: MaranathaElevatedButton.LightElevatedButtonTheme,
    outlinedButtonTheme: MaranathaOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: MaranathaTextFieldTheme.lightInputDecorationTheme
  );
  
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: MaranathaTextTheme.darkTextTheme,
    chipTheme: MaranathaChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: MaranathaAppBarTheme.darkAppBarTheme,
    checkboxTheme: MaranathaCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MaranathaBottonSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MaranathaElevatedButton.darkElevatedButtonTheme,
    outlinedButtonTheme: MaranathaOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MaranathaTextFieldTheme.darkInputDecorationTheme
  );
}