import '../../../../exports.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onTap, required this.text});

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AnimatedButtonWrapper(
      onTap: onTap,
      child: Ink(
        height: 48,
        width: context.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: AppColors.c0E33F3,
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
