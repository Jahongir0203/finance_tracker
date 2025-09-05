import '../../../../exports.dart';

class AppRadioBox extends StatelessWidget {
  const AppRadioBox({super.key, required this.value});

  final bool value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: value? AppColors.cFFFFFF: context.color.scaffoldBg,
          borderRadius: BorderRadius.circular(36),
          border: Border.all(
            color: value ? AppColors.c0E33F3 : AppColors.cB0B8BF,
            width: value ? 5 : 2,
          ),
        ),
      ),
    );
  }
}
