import 'package:finance_tracker/core/constants/app_locale_keys.dart';
import 'package:finance_tracker/exports.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  ///Regular
  final TextStyle boardingBody;
  final TextStyle textField;
  final TextStyle forgotPasswordTitle;
  final TextStyle forgotPasswordBody;
  final TextStyle listTileTrailing;

  ///Medium
  final TextStyle passwordUpdateTitle;

  ///SemiBold
  final TextStyle boardingTitle;
  final TextStyle buttonTitle;
  final TextStyle forgotPassword;
  final TextStyle listTileTitle;

  ///Bold
  final TextStyle boardingHeadline;
  final TextStyle splashTitle;
  final TextStyle authHeader;

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

    textField: TextStyle(
      color: AppColors.c242D35,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      fontSize: 16,
    ),

    forgotPasswordTitle: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.c242D35,
    ),
    forgotPasswordBody: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.c9BA1A8,
    ),

    listTileTrailing: TextStyle(
        fontSize: 14,
        fontFamily: AppLocaleKeys.fontRegular,
        fontWeight: FontWeight.w400,
        color: AppColors.c6B7580
    ),
    listTileTitle: TextStyle(
        fontSize: 16,
        fontFamily: AppLocaleKeys.fontSemiBold,
        fontWeight: FontWeight.w600,
        color: AppColors.c242D35
    ),

    ///Medium
    passwordUpdateTitle: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
  fontFamily: AppLocaleKeys.fontMedium,
    color: AppColors.c242D35,
  ),

  ///SemiBold
      boardingTitle

      :

  TextStyle

  (

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

  forgotPassword: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  fontFamily: AppLocaleKeys.fontSemiBold,
  color: AppColors.c6B7580,
  ),

  ///Bold
  boardingHeadline: TextStyle(
  fontWeight: FontWeight.w700,
  color: AppColors.c242D35,
  fontSize: 24,
  fontFamily: AppLocaleKeys.fontBold,
  ),
  authHeader: TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w700,
  color: AppColors.c242D35,
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

  textField: TextStyle(
  color: AppColors.cF5F6F7,
  fontWeight: FontWeight.w400,
  fontFamily: AppLocaleKeys.fontRegular,
  fontSize: 16,
  ),
  forgotPasswordTitle: TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w400,
  fontFamily: AppLocaleKeys.fontRegular,
  color: AppColors.cF5F6F7,
  ),
  forgotPasswordBody: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  fontFamily: AppLocaleKeys.fontRegular,
  color: AppColors.cB0B8BF,
  ),
  listTileTrailing: TextStyle(
  fontSize: 14,
  fontFamily: AppLocaleKeys.fontRegular,
  fontWeight: FontWeight.w400,
  color: AppColors.cB0B8BF
  ),
  ///Medium
  passwordUpdateTitle: TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  fontFamily: AppLocaleKeys.fontMedium,
  color: AppColors.cF5F6F7,
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

  forgotPassword: TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w600,
  fontFamily: AppLocaleKeys.fontSemiBold,
  color: AppColors.cB0B8BF,
  ),

  listTileTitle: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  fontFamily: AppLocaleKeys.fontSemiBold,
  color: AppColors.cF5F6F7
  ),

  ///Bold
  boardingHeadline: TextStyle(
  fontWeight: FontWeight.w700,
  color: AppColors.cF5F6F7,
  fontSize: 24,
  fontFamily: AppLocaleKeys.fontBold,
  ),
  authHeader: TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w700,
  color: AppColors.cF5F6F7,
  fontFamily: AppLocaleKeys.fontBold,
  ),
  );

  ThemeTextStyles({
  required this.boardingBody,
  required this.boardingTitle,
  required this.boardingHeadline,
  required this.splashTitle,
  required this.buttonTitle,
  required this.authHeader,
  required this.forgotPassword,
  required this.textField,
  required this.forgotPasswordTitle,
  required this.forgotPasswordBody,
  required this.passwordUpdateTitle,
  required this.listTileTitle,
  required this.listTileTrailing,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
  TextStyle? splashTitle,
  TextStyle? boardingBody,
  TextStyle? boardingTitle,
  TextStyle? boardingHeadline,
  TextStyle? buttonTitle,
  TextStyle? authHeader,
  TextStyle? forgotPassword,
  TextStyle? textField,
  TextStyle? forgotPasswordTitle,
  TextStyle? forgotPasswordBody,
  TextStyle? passwordUpdateTitle,
  TextStyle? listTileTitle,
  TextStyle? listTileTrailing,
  }) {
  return ThemeTextStyles(
  splashTitle: splashTitle ?? this.splashTitle,
  boardingBody: boardingBody ?? this.boardingBody,
  boardingTitle: boardingTitle ?? this.boardingTitle,
  boardingHeadline: boardingHeadline ?? this.boardingHeadline,
  buttonTitle: buttonTitle ?? this.buttonTitle,
  authHeader: authHeader ?? this.authHeader,
  forgotPassword: forgotPassword ?? this.forgotPassword,
  textField: textField ?? this.textField,
  forgotPasswordBody: forgotPasswordBody ?? this.forgotPasswordBody,
  forgotPasswordTitle: forgotPasswordTitle ?? this.forgotPasswordTitle,
  passwordUpdateTitle: passwordUpdateTitle ?? this.passwordUpdateTitle,
  listTileTitle: listTileTitle ?? this.listTileTitle,
  listTileTrailing: listTileTrailing ?? this.listTileTrailing,
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
  authHeader: TextStyle.lerp(authHeader, other.authHeader, t)!,
  forgotPassword: TextStyle.lerp(forgotPassword, other.forgotPassword, t)!,
  textField: TextStyle.lerp(textField, other.textField, t)!,
  forgotPasswordTitle:
  TextStyle.lerp(forgotPasswordTitle, other.forgotPasswordTitle, t)!,
  forgotPasswordBody:
  TextStyle.lerp(forgotPasswordBody, other.forgotPasswordBody, t)!,
  passwordUpdateTitle:
  TextStyle.lerp(passwordUpdateTitle, other.passwordUpdateTitle, t)!,
  listTileTrailing:
  TextStyle.lerp(listTileTrailing, other.listTileTrailing, t)!,
  listTileTitle: TextStyle.lerp(listTileTitle, other.listTileTitle, t)!,
  );
  }
}
