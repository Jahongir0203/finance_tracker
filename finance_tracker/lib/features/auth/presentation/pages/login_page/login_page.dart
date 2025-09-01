import 'package:finance_tracker/features/common/presentation/widgets/app_button.dart';
import 'package:finance_tracker/features/common/presentation/widgets/app_text_form_field.dart';

import '../../../../../exports.dart';
import '../../widgets/auth_header.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WLayout(
      child: Scaffold(
        body: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AuthHeader(),
              AppTextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                prefixIconPath: context.appSvgs.icPerson,
                hintText: AppLocaleKeys.email,
              ),
              20.verticalSpace,
              AppTextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                prefixIconPath: context.appSvgs.icPassword,
                hintText: AppLocaleKeys.password,
              ),
              24.verticalSpace,
              AppButton(onTap: () {}, text: AppLocaleKeys.login),
              10.verticalSpace,
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {}
                  },
                  child: Text(
                    "Parolni unutdingizmi?",
                    textAlign: TextAlign.end,
                    style: context.textStyle.forgotPassword,
                  ),
                ),
              ),
              20.verticalSpace,
              AppButton(
                onTap: () {
                  context.go(Routes.register);
                },
                enableShadow: false,
                borderColor: AppColors.c0E33F3,
                text: AppLocaleKeys.register,
                backgroundColor: AppColors.cTransparent,
                textStyle: context.textStyle.boardingTitle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ).paddingSymmetric(horizontal: 24),
        ),
      ),
    );
  }
}
