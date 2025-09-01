import '../../../../../exports.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  late TextEditingController _passwordController;
  late TextEditingController _repeatPasswordController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _passwordController = TextEditingController();
    _repeatPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WLayout(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        40.verticalSpace,
                        Text(
                          "Yangi parolni yarating",
                          style: context.textStyle.forgotPasswordTitle,
                        ),
                        15.verticalSpace,
                        Text(
                          "Yangi parolingiz avvalgi paroldan farq qilishi shart",
                          style: context.textStyle.forgotPasswordBody,
                        ),
                        48.verticalSpace,
                        AppTextFormField(
                          obscure: true,
                          hintText: AppLocaleKeys.password,
                          prefixIconPath: context.appSvgs.icPassword,
                          controller: _passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            return ValidatorHelpers.validatePassword(
                              value: value!,
                            );
                          },
                        ),
                        16.verticalSpace,
                        AppTextFormField(
                          obscure: true,
                          hintText: AppLocaleKeys.repeatPassword,
                          prefixIconPath: context.appSvgs.icPassword,
                          controller: _repeatPasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          validator: (value) {
                            return ValidatorHelpers.validatePasswords(
                              value1: value!,
                              value2: _passwordController.text.trim(),
                            );
                          },
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppButton(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              context.push(Routes.updatePasswordSuccess);
                            }
                          },
                          text: "Parolni qayat tiklash",
                        ),
                        30.verticalSpace,
                      ],
                    ),
                  ],
                ).paddingSymmetric(horizontal: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
