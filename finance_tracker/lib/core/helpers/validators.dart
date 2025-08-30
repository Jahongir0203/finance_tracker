abstract class ValidatorHelpers {
  static String? validateEmail({required String value, message}) {
    final RegExp emailRegExp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+",
    );
    if (value.toString().trim().isEmpty) {
      return "Bu maydon bo'sh bo'lishi mumkin emas";
    } else if (!(emailRegExp.hasMatch(value))) {
      return "Email xato";
    }

    return null;
  }
}
