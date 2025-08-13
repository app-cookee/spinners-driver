import 'package:flutter/material.dart';
import 'package:spinners_driver/app/theme/app_colors.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    colorScheme: const ColorScheme.light(
      // secondary: AppColors.secondaryColor,
      primary: AppColors.primaryColor,
    ),
    // fontFamily: 'gilroy',
    textSelectionTheme:const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      // selectionHandleColor: AppColors.greenColor,
      // selectionColor: AppColors.greenColor.withOpacity(.2),
    ),
    
  );
  static final darkTheme = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    // primaryColor: AppColors.greenColor,
    colorScheme: const ColorScheme.light(
      // secondary: AppColors.secondaryColor,
      // primary: AppColors.greenColor,
    ),
    // fontFamily: 'gilroy',
    textSelectionTheme:const TextSelectionThemeData(
      // cursorColor: AppColors.greenColor,
      // selectionHandleColor: AppColors.greenColor,
      // selectionColor: AppColors.greenColor.withOpacity(.2),
    ),
  );
}
