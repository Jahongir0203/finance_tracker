import 'package:firebase_auth/firebase_auth.dart';

import '../../../../../../exports.dart';

class WUserInfo extends StatelessWidget {
  const WUserInfo({super.key, required this.user});

  final User? user;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.c0E33F3,
              borderRadius: BorderRadius.circular(50),
              gradient: LinearGradient(
                begin: AlignmentGeometry.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.cBlue, AppColors.c0E33F3],
              ),
            ),
            child: Center(
              child: Text(
                "${user?.displayName?.substring(0, 2)}",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w600,
                  fontFamily: AppLocaleKeys.fontSemiBold,
                  color: AppColors.cFFFFFF,
                ),
              ),
            ),
          ),
        ),
        Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user?.displayName ?? 'A',
              style: context.textStyle.size20SemiBold,
            ),
            Text(user?.email ?? '', style: context.textStyle.size16Medium2),
          ],
        ),
      ],
    ).paddingSymmetric(horizontal: 16);
  }
}
