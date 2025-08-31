import 'package:finance_tracker/exports.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color scaffoldBg;

  ThemeColors({required this.scaffoldBg});

  static ThemeColors light = ThemeColors(scaffoldBg: AppColors.cFFFFFF);
  static ThemeColors dark = ThemeColors(scaffoldBg: AppColors.c0F1B26);

  @override
  ThemeExtension<ThemeColors> copyWith({Color? scaffoldBg}) {
    return ThemeColors(scaffoldBg: scaffoldBg ?? this.scaffoldBg);
  }

  @override
  ThemeExtension<ThemeColors> lerp(
    covariant ThemeExtension<ThemeColors>? other,
    double t,
  ) {
    if (other is! ThemeColors) {
      return this;
    }

    return ThemeColors(
      scaffoldBg: Color.lerp(scaffoldBg, other.scaffoldBg, t)!,
    );
  }
}
