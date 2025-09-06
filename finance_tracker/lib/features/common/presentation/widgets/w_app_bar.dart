import '../../../../exports.dart';

class WAppBar extends StatelessWidget {
  const WAppBar({super.key, required this.title, this.enableBack = true});

  final String title;
  final bool enableBack;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.color.scaffoldBg,
      surfaceTintColor: AppColors.cTransparent,
      elevation: 10,
      leading:
          enableBack
              ? IconButton(
                onPressed: () {
                  context.pop();
                },
                icon: SvgPicture.asset(context.appSvgs.icBack),
              )
              : null,
      title: Text(title, style: context.textStyle.size20SemiBold),
    );
  }
}
