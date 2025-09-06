import '../../../../exports.dart';

class WDecoratedBottomContainer extends StatelessWidget {
  const WDecoratedBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5,
      width: 100,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.cGrey,
        ),
      ),
    );
  }
}
