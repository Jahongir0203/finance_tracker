import '../../../../exports.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onTap,
    required this.text,
    this.backgroundColor,
    this.borderColor,
  });

  final VoidCallback onTap;
  final String text;
  final Color? backgroundColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedButtonWrapper(
      onTap: onTap,
      child: Ink(
        height: 48,
        width: context.w,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor ?? AppColors.cTransparent),
          borderRadius: BorderRadius.circular(14),
          color: backgroundColor ?? AppColors.c0E33F3,
          boxShadow: [
            BoxShadow(
              color: AppColors.c000000.newWithOpacity(.2),
              blurRadius: 20,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: context.textStyle.buttonTitle,
          ),
        ),
      ),
    );
  }
}
