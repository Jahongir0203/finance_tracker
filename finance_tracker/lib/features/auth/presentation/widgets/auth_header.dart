import '../../../../exports.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        20.verticalSpace,
        SizedBox(
          height: 88,
          width: 88,
          child: SvgPicture.asset(context.appSvgs.icLogo, fit: BoxFit.cover),
        ),
        7.verticalSpace,
        Text(AppLocaleKeys.monex, style: context.textStyle.authHeader),
        52.verticalSpace,
      ],
    );
  }
}
