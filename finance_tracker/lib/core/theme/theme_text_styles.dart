import 'package:finance_tracker/core/constants/app_locale_keys.dart';
import 'package:finance_tracker/exports.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  final TextStyle boardingBody;
  final TextStyle textField;
  final TextStyle forgotPasswordTitle;
  final TextStyle forgotPasswordBody;
  final TextStyle listTileTrailing;
  final TextStyle passwordUpdateTitle;
  final TextStyle boardingTitle;
  final TextStyle buttonTitle;
  final TextStyle forgotPassword;
  final TextStyle listTileTitle;
  final TextStyle boardingHeadline;
  final TextStyle splashTitle;
  final TextStyle authHeader;
  final TextStyle size20SemiBold;
  final TextStyle size18Semibold;
  final TextStyle size16SemiBold;
  final TextStyle size14SemiBold;
  final TextStyle size18Medium;
  final TextStyle size16Medium;
  final TextStyle size16Medium2;
  final TextStyle size14Medium;
  final TextStyle size14Medium2;
  final TextStyle size18Regular;
  final TextStyle size16Regular;
  final TextStyle size16Regular2;
  final TextStyle size14Regular;
  final TextStyle size14Regular2;

  static ThemeTextStyles light = ThemeTextStyles(
    splashTitle: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.c242D35,
      fontSize: 46,
      fontFamily: AppLocaleKeys.fontBold,
    ),

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
      color: AppColors.c6B7580,
    ),
    listTileTitle: TextStyle(
      fontSize: 16,
      fontFamily: AppLocaleKeys.fontSemiBold,
      fontWeight: FontWeight.w600,
      color: AppColors.c242D35,
    ),

    passwordUpdateTitle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.c242D35,
    ),

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

    forgotPassword: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: AppLocaleKeys.fontSemiBold,
      color: AppColors.c6B7580,
    ),

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
    size20SemiBold: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: AppLocaleKeys.fontSemiBold,
      color: AppColors.c242D35,
    ),
    size18Semibold: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: AppLocaleKeys.fontSemiBold,
      color: AppColors.c242D35,
    ),
    size16SemiBold: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: AppLocaleKeys.fontSemiBold,
      color: AppColors.c242D35,
    ),

    size14SemiBold: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: AppLocaleKeys.fontSemiBold,
      color: AppColors.cB0B8BF,
    ),
    size18Medium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.c242D35,
    ),
    size16Medium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.c242D35,
    ),
    size16Medium2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.c242D35,
    ),
    size14Medium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.c242D35,
    ),
    size14Medium2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.c242D35,
    ),
    size18Regular: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.c242D35,
    ),
    size16Regular: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.c242D35,
    ),
    size16Regular2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.c242D35,
    ),
    size14Regular: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.c242D35,
    ),
    size14Regular2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.c6B7580,
    ),
  );

  static ThemeTextStyles dark = ThemeTextStyles(
    splashTitle: TextStyle(
      fontWeight: FontWeight.w700,
      color: AppColors.cF5F6F7,
      fontSize: 46,
      fontFamily: AppLocaleKeys.fontBold,
    ),

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
      color: AppColors.cB0B8BF,
    ),

    passwordUpdateTitle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.cF5F6F7,
    ),

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
      color: AppColors.cF5F6F7,
    ),

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
    size20SemiBold: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: AppLocaleKeys.fontSemiBold,
      color: AppColors.cF5F6F7,
    ),
    size18Semibold: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: AppLocaleKeys.fontSemiBold,
      color: AppColors.cF5F6F7,
    ),
    size16SemiBold: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      fontFamily: AppLocaleKeys.fontSemiBold,
      color: AppColors.cF5F6F7,
    ),
    size14SemiBold: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontFamily: AppLocaleKeys.fontSemiBold,
      color: AppColors.cF5F6F7,
    ),
    size18Medium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.cF5F6F7,
    ),
    size16Medium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.cF5F6F7,
    ),
    size16Medium2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.cF5F6F7,
    ),
    size14Medium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.cF5F6F7,
    ),
    size14Medium2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontFamily: AppLocaleKeys.fontMedium,
      color: AppColors.cF5F6F7,
    ),
    size18Regular: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.cF5F6F7,
    ),
    size16Regular: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.cF5F6F7,
    ),
    size16Regular2: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.cF5F6F7,
    ),
    size14Regular: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.cFFFFFF,
    ),
    size14Regular2: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      fontFamily: AppLocaleKeys.fontRegular,
      color: AppColors.cB0B8BF,
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
    required this.size20SemiBold,
    required this.size18Semibold,
    required this.size16SemiBold,
    required this.size14SemiBold,
    required this.size18Medium,
    required this.size16Medium,
    required this.size16Medium2,
    required this.size14Medium,
    required this.size14Medium2,
    required this.size18Regular,
    required this.size16Regular,
    required this.size16Regular2,
    required this.size14Regular,
    required this.size14Regular2,
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
    TextStyle? size20SemiBold,
    TextStyle? size18Semibold,
    TextStyle? size16SemiBold,
    TextStyle? size14SemiBold,
    TextStyle? size18Medium,
    TextStyle? size16Medium,
    TextStyle? size16Medium2,
    TextStyle? size14Medium,
    TextStyle? size14Medium2,
    TextStyle? size18Regular,
    TextStyle? size16Regular,
    TextStyle? size16Regular2,
    TextStyle? size14Regular,
    TextStyle? size14Regular2,
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
      size20SemiBold: size20SemiBold ?? this.size20SemiBold,
      size18Semibold: size18Semibold ?? this.size18Semibold,
      size16SemiBold: size16SemiBold ?? this.size16SemiBold,
      size14SemiBold: size14SemiBold??this.size14SemiBold,
      size18Medium: size18Medium ?? this.size18Medium,
      size16Medium: size16Medium ?? this.size16Medium,
      size16Medium2: size16Medium2 ?? this.size16Medium2,
      size14Medium: size14Medium ?? this.size14Medium,
      size14Medium2: size14Medium2 ?? this.size14Medium2,
      size18Regular: size18Regular ?? this.size18Regular,
      size16Regular: size16Regular ?? this.size16Regular,
      size16Regular2: size16Regular2 ?? this.size16Regular2,
      size14Regular: size14Regular ?? this.size14Regular,
      size14Regular2: size14Regular2 ?? this.size14Regular2,
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
      size20SemiBold: TextStyle.lerp(size20SemiBold, other.size20SemiBold, t)!,
      size18Semibold: TextStyle.lerp(size18Semibold, other.size18Semibold, t)!,
      size16SemiBold: TextStyle.lerp(size16SemiBold, other.size16SemiBold, t)!,
      size14SemiBold: TextStyle.lerp(size14SemiBold, other.size14SemiBold, t)!,
      size18Medium: TextStyle.lerp(size18Medium, other.size18Medium, t)!,
      size16Medium: TextStyle.lerp(size16Medium, other.size16Medium, t)!,
      size16Medium2: TextStyle.lerp(size16Medium2, other.size16Medium2, t)!,
      size14Medium: TextStyle.lerp(size14Medium, other.size14Medium, t)!,
      size14Medium2: TextStyle.lerp(size14Medium2, other.size14Medium2, t)!,
      size16Regular: TextStyle.lerp(size16Regular, other.size16Regular, t)!,
      size16Regular2: TextStyle.lerp(size16Regular2, other.size16Regular2, t)!,
      size14Regular: TextStyle.lerp(size14Regular, other.size14Regular, t)!,
      size14Regular2: TextStyle.lerp(size14Regular2, other.size14Regular2, t)!,
      size18Regular: TextStyle.lerp(size18Regular, other.size18Regular, t)!,
    );
  }
}
