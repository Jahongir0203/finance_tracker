import 'package:finance_tracker/core/core.dart';
import 'package:finance_tracker/core/theme/theme_svgs.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    extensions: [ThemeColors.light, ThemeTextStyles.light, ThemeSvgs.light],
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.cFFFFFF,
    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      fillColor: AppColors.cF5F6F7,
      hintStyle: TextStyle(
        color: AppColors.c9BA1A8,
        fontFamily: AppLocaleKeys.fontRegular,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      prefixIconConstraints: BoxConstraints(
        minHeight: 24,
        maxHeight: 24,
        minWidth: 0,
      ),

      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.c37ABFF, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.cDCDFE3, width: 1),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.cDCDFE3, width: 1),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.cDCDFE3, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.cEF4E4E, width: 1),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData.light().copyWith(
    extensions: [ThemeColors.dark, ThemeTextStyles.dark, ThemeSvgs.dark],
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.c0F1B26,
    inputDecorationTheme: InputDecorationThemeData(
      filled: true,
      fillColor: AppColors.c242D35,
      hintStyle: TextStyle(
        color: AppColors.cB0B8BF,
        fontFamily: AppLocaleKeys.fontRegular,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      prefixIconConstraints: BoxConstraints(
        minHeight: 24,
        maxHeight: 24,
        minWidth: 0,
      ),

      contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.c37ABFF, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.c6B7580, width: 1),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.c6B7580, width: 1),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.c6B7580, width: 1),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: AppColors.cEF4E4E, width: 1),
      ),
    ),
  );
}
