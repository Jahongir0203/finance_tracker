import 'package:finance_tracker/core/constants/app_locale_keys.dart';

abstract class ValidatorHelpers {
  static String? validateField({required String value}) {
    if (value.toString().trim().isEmpty) {
      return AppLocaleKeys.strCanNotBeEmpty;
    }
    return null;
  }

  static String? validateEmail({required String value, message}) {
    final RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+",
    );
    if (value.toString().trim().isEmpty) {
      return AppLocaleKeys.strCanNotBeEmpty;
    } else if (!(emailRegExp.hasMatch(value))) {
      return AppLocaleKeys.incorrectEmail;
    }

    return null;
  }

  static String? validatePassword({required String value, message}) {
    if (value.toString().trim().isEmpty) {
      return AppLocaleKeys.strCanNotBeEmpty;
    } else if (value.length < 8) {
      return AppLocaleKeys.pasBeAtLEast8;
    }

    return null;
  }

  static String? validatePasswords({
    required String value1,
    required String value2,
  }) {
    if (value1.toString().trim().isEmpty) {
      return AppLocaleKeys.strCanNotBeEmpty;
    } else if (value1 != value2) {
      return AppLocaleKeys.pasNotEqual;
    }

    return null;
  }
}
