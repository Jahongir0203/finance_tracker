import '../../../../../../exports.dart';

class OnBoardingIndicator extends StatelessWidget {
  final int currentIndex;
  final int itemCount;

  const OnBoardingIndicator({
    super.key,
    required this.currentIndex,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        final isActive = index == currentIndex;
        return AnimatedContainer(
          duration: TimeDelayConst.durationMill300,
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 10,
          width: isActive ? 24 : 10,
          decoration: BoxDecoration(
            color: isActive ? AppColors.c0E33F3 : context.color.indicatorColor,
            borderRadius: BorderRadius.circular(12),
          ),
        );
      }),
    );
  }
}
