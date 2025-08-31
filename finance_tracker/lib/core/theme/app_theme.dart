import 'package:finance_tracker/core/core.dart';
import 'package:finance_tracker/core/theme/theme_svgs.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    extensions: [ThemeColors.light, ThemeTextStyles.light, ThemeSvgs.light],
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.cFFFFFF,
  );

  static ThemeData darkTheme = ThemeData.light().copyWith(
    extensions: [ThemeColors.dark, ThemeTextStyles.dark, ThemeSvgs.dark],
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.c0F1B26,
  );
}
