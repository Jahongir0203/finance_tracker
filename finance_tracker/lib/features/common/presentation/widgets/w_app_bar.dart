import '../../../../exports.dart';

class WAppBar extends StatelessWidget {
  const WAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.color.scaffoldBg,
      surfaceTintColor: AppColors.cTransparent,
      elevation: 10,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: SvgPicture.asset(context.appSvgs.icBack),
      ),
      title: Text(title, style: context.textStyle.size20SemiBold),
    );
  }
}
