import '../../../../exports.dart';

class WLayout extends StatelessWidget {
  const WLayout({super.key, required this.child, this.bottom, this.top});

  final Widget child;
  final bool? bottom;
  final bool? top;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.color.scaffoldBg,
      child: SafeArea(bottom: bottom ?? true, top: top ?? true, child: child),
    );
  }
}
