import 'package:finance_tracker/core/constants/app_locale_keys.dart';
import 'package:finance_tracker/exports.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle splashTitle;
  static ThemeTextStyles light = ThemeTextStyles(
    splashTitle: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.c242D35,
      fontSize: 46,
      fontFamily: AppLocaleKeys.fontBold,
    ),
  );

  static ThemeTextStyles dark = ThemeTextStyles(
    splashTitle: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.cF5F6F7,
      fontSize: 46,
      fontFamily: AppLocaleKeys.fontBold,
    ),
  );

  ThemeTextStyles({required this.splashTitle});

  @override
  ThemeExtension<ThemeTextStyles> copyWith({TextStyle? splashTitle}) {
    return ThemeTextStyles(splashTitle: splashTitle ?? this.splashTitle);
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    covariant ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }
    return ThemeTextStyles(
      splashTitle: TextStyle.lerp(splashTitle, other.splashTitle, t)!,
    );
  }
}
