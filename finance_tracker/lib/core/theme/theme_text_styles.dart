import 'package:finance_tracker/core/constants/app_locale_keys.dart';
import 'package:finance_tracker/exports.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  ///Regular
  final TextStyle boardingBody;

  ///SemiBold
  final TextStyle boardingTitle;
  final TextStyle buttonTitle;

  ///Bold
  final TextStyle boardingHeadline;
  final TextStyle splashTitle;

  static ThemeTextStyles light = ThemeTextStyles(
    splashTitle: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.c242D35,
      fontSize: 46,
      fontFamily: AppLocaleKeys.fontBold,
    ),

    ///Regular
    boardingBody: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.c6B7580,
      fontSize: 16,
      fontFamily: AppLocaleKeys.fontRegular,
    ),

    ///SemiBold
    boardingTitle: TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.c242D35,
      fontSize: 18,
      fontFamily: AppLocaleKeys.fontSemiBold,
    ),

    buttonTitle: TextStyle(
      color: AppColors.cFFFFFF,
      fontFamily: AppLocaleKeys.fontSemiBold,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),

    ///Bold
    boardingHeadline: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.c242D35,
      fontSize: 24,
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

    ///Regular
    boardingBody: TextStyle(
      fontWeight: FontWeight.w400,
      color: AppColors.cB0B8BF,
      fontSize: 16,
      fontFamily: AppLocaleKeys.fontRegular,
    ),

    ///SemiBold
    boardingTitle: TextStyle(
      fontWeight: FontWeight.w600,
      color: AppColors.cF5F6F7,
      fontSize: 18,
      fontFamily: AppLocaleKeys.fontSemiBold,
    ),
    buttonTitle: TextStyle(
      color: AppColors.cFFFFFF,
      fontFamily: AppLocaleKeys.fontSemiBold,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),

    ///Bold
    boardingHeadline: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.cF5F6F7,
      fontSize: 24,
      fontFamily: AppLocaleKeys.fontBold,
    ),
  );

  ThemeTextStyles({
    required this.boardingBody,
    required this.boardingTitle,
    required this.boardingHeadline,
    required this.splashTitle,
    required this.buttonTitle,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? splashTitle,
    TextStyle? boardingBody,
    TextStyle? boardingTitle,
    TextStyle? boardingHeadline,
    TextStyle? buttonTitle,
  }) {
    return ThemeTextStyles(
      splashTitle: splashTitle ?? this.splashTitle,
      boardingBody: boardingBody ?? this.boardingBody,
      boardingTitle: boardingTitle ?? this.boardingTitle,
      boardingHeadline: boardingHeadline ?? this.boardingHeadline,
      buttonTitle: buttonTitle ?? this.buttonTitle,
    );
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
      boardingBody: TextStyle.lerp(boardingBody, other.boardingBody, t)!,
      boardingTitle: TextStyle.lerp(boardingTitle, other.boardingTitle, t)!,
      boardingHeadline:
          TextStyle.lerp(boardingHeadline, other.boardingHeadline, t)!,
      buttonTitle: TextStyle.lerp(buttonTitle, other.buttonTitle, t)!,
    );
  }
}
