import '../../../../exports.dart';

class AnimatedButtonWrapper extends StatefulWidget {
  const AnimatedButtonWrapper({
    super.key,
    required this.child,
    required this.onTap,
  });

  final Widget child;
  final Function onTap;

  @override
  State<AnimatedButtonWrapper> createState() => _AnimatedButtonWrapperState();
}

class _AnimatedButtonWrapperState extends State<AnimatedButtonWrapper>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late double _scale;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: TimeDelayConst.durationMill100,
      reverseDuration: TimeDelayConst.durationMill100,
      upperBound: 0.05,
    )..addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _animationController.value;
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: () {
        if (_animationController.isAnimating) return;
        _animationController.forward();

        Future.delayed(TimeDelayConst.durationMill100, () {
          _animationController.reverse();
          widget.onTap();
        });
      },
      child: Transform.scale(scale: _scale, child: widget.child),
    );
  }
}