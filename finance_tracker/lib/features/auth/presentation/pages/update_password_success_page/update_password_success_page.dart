import '../../../../../exports.dart';

class UpdatePasswordSuccessPage extends StatelessWidget {
  const UpdatePasswordSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WLayout(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            10.verticalSpace,
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: SvgPicture.asset(context.appSvgs.icBack),
            ).paddingOnly(left: 10),
            Expanded(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(context.appSvgs.icIllustration),
                    20.verticalSpace,
                    Text(
                      "Parol yangilandi!",
                      textAlign: TextAlign.center,
                      style: context.textStyle.passwordUpdateTitle,
                    ),
                    10.verticalSpace,
                    Text(
                      "Parolingiz muvaffaqiyatli\nyangilandi!",
                      textAlign: TextAlign.center,
                      style: context.textStyle.forgotPasswordBody,
                    ),
                  ],
                ),
              ),
            ),
            AppButton(
              onTap: () => context.go(Routes.login),
              text: "Back to login",
            ).paddingSymmetric(horizontal: 24),
            30.verticalSpace,
          ],
        ),
      ),
    );
  }
}
