import '../../../../exports.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.controller,
    this.hintText,
    required this.keyboardType,
    this.prefixIconPath,
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? hintText;
  final String? prefixIconPath;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: true,
      controller: controller,
      keyboardType: keyboardType,
      style: context.textStyle.textField,
      decoration: InputDecoration(
        enabled: true,
        hintText: hintText,
        prefixIcon: SizedBox(
          height: 24,
          width: 24,
          child: SvgPicture.asset(
            prefixIconPath!,
            fit: BoxFit.contain,
          ).paddingAll(3),
        ).paddingOnly(left: 16, right: 5),
        contentPadding: context.theme.inputDecorationTheme.contentPadding,
        fillColor: context.theme.inputDecorationTheme.fillColor,
        filled: context.theme.inputDecorationTheme.filled,
        hintStyle: context.theme.inputDecorationTheme.hintStyle,
        errorBorder: context.theme.inputDecorationTheme.errorBorder,
        border: context.theme.inputDecorationTheme.border,
        enabledBorder: context.theme.inputDecorationTheme.enabledBorder,
        focusedBorder: context.theme.inputDecorationTheme.focusedBorder,
        disabledBorder: context.theme.inputDecorationTheme.disabledBorder,
      ),
    );
  }
}
