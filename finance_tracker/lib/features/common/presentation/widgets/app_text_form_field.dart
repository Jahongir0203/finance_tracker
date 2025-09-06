import '../../../../exports.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    required this.controller,
    this.hintText,
    required this.keyboardType,
    this.prefixIconPath,
    this.validator,
    this.obscure = false,
    this.inputFormatters = const [],
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String? hintText;
  final String? prefixIconPath;
  final FormFieldValidator<String>? validator;
  final bool obscure;
  final List<TextInputFormatter> inputFormatters;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: true,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      style: context.textStyle.textField,
      inputFormatters: widget.inputFormatters,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabled: true,
        hintText: widget.hintText,
        prefixIcon:
            widget.prefixIconPath != null
                ? SizedBox(
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(
                    widget.prefixIconPath!,
                    fit: BoxFit.contain,
                  ).paddingAll(3),
                ).paddingOnly(left: 16, right: 5)
                : null,
        suffixIcon:
            widget.obscure
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  icon: SvgPicture.asset(
                    obscureText
                        ? context.appSvgs.icVisibility
                        : context.appSvgs.icVisibilityOff,
                  ),
                )
                : null,
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
