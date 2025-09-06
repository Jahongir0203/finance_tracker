import '../../../../exports.dart';

class WLayout extends StatelessWidget {
  const WLayout({
    super.key,
    required this.child,
    this.bottom,
    this.top,
    this.bgColor,
  });

  final Widget child;
  final bool? bottom;
  final bool? top;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor??context.color.scaffoldBg,
      child: SafeArea(bottom: bottom ?? true, top: top ?? true, child: child),
    );
  }
}
