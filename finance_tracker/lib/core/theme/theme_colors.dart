import 'package:finance_tracker/exports.dart';

class ThemeColors extends ThemeExtension<ThemeColors> {
  final Color scaffoldBg;
  final Color gradient1;
  final Color gradient2;
  final Color indicatorColor;
  final Color navBar;
  final Color navBarIcon;

  ThemeColors({
    required this.scaffoldBg,
    required this.gradient1,
    required this.gradient2,
    required this.indicatorColor,
    required this.navBar,
    required this.navBarIcon,
  });

  static ThemeColors light = ThemeColors(
    scaffoldBg: AppColors.cFFFFFF,
    gradient1: AppColors.c2FDAFF,
    gradient2: AppColors.c0E33F3,
    indicatorColor: AppColors.cEBEEF0,
    navBar: AppColors.cFFFFFF.newWithOpacity(.5),
    navBarIcon: AppColors.cB0B8BF,
  );
  static ThemeColors dark = ThemeColors(
    scaffoldBg: AppColors.c0F1B26,
    gradient1: AppColors.c2F51FF,
    gradient2: AppColors.c0E33F3,
    indicatorColor: AppColors.c3E4C59,
    navBar: AppColors.c0F1B26.newWithOpacity(.5),
    navBarIcon: AppColors.c3E4C59,
  );

  @override
  ThemeExtension<ThemeColors> copyWith({
    Color? scaffoldBg,
    Color? gradient1,
    Color? gradient2,
    Color? indicatorColor,
    Color? navBar,
    Color? navBarIcon,
  }) {
    return ThemeColors(
      scaffoldBg: scaffoldBg ?? this.scaffoldBg,
      gradient1: gradient1 ?? this.gradient1,
      gradient2: gradient2 ?? this.gradient2,
      indicatorColor: indicatorColor ?? this.indicatorColor,
      navBar: navBar ?? this.navBar,
      navBarIcon: navBarIcon ?? this.navBarIcon,
    );
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
      gradient1: Color.lerp(gradient1, other.gradient1, t)!,
      gradient2: Color.lerp(gradient2, other.gradient2, t)!,
      indicatorColor: Color.lerp(indicatorColor, other.indicatorColor, t)!,
      navBar: Color.lerp(navBar, other.navBar, t)!,
      navBarIcon: Color.lerp(navBarIcon, other.navBarIcon, t)!,
    );
  }
}
