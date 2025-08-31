import 'package:finance_tracker/exports.dart';

class ThemeSvgs extends ThemeExtension<ThemeSvgs> {
  final String icLogo;
  final String onBoarding1;
  final String onBoarding2;
  final String onBoarding3;

  ThemeSvgs({
    required this.icLogo,
    required this.onBoarding1,
    required this.onBoarding2,
    required this.onBoarding3,
  });

  static ThemeSvgs light = ThemeSvgs(
    icLogo: AppLightSvgs.icLogo,
    onBoarding1: AppLightSvgs.icOnBoarding1,
    onBoarding2: AppLightSvgs.icOnBoarding2,
    onBoarding3: AppLightSvgs.icOnBoarding3,
  );

  static ThemeSvgs dark = ThemeSvgs(
    icLogo: AppDarkSvgs.icLogo,
    onBoarding1: AppDarkSvgs.icOnBoarding1,
    onBoarding2: AppDarkSvgs.icOnBoarding2,
    onBoarding3: AppDarkSvgs.icOnBoarding3,
  );

  @override
  ThemeExtension<ThemeSvgs> copyWith({
    String? icLogo,
    String? onBoarding1,
    String? onBoarding2,
    String? onBoarding3,
  }) {
    return ThemeSvgs(
      icLogo: icLogo ?? this.icLogo,
      onBoarding1: onBoarding1 ?? this.onBoarding1,
      onBoarding2: onBoarding2 ?? this.onBoarding2,
      onBoarding3: onBoarding3 ?? this.onBoarding3,
    );
  }

  @override
  ThemeExtension<ThemeSvgs> lerp(
    covariant ThemeExtension<ThemeSvgs>? other,
    double t,
  ) {
    if (other is! ThemeSvgs) return this;
    return t < 0.5 ? this : other;
  }
}
