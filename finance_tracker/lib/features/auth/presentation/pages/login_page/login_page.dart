import 'package:finance_tracker/features/auth/domain/usecases/login_usecase.dart';
import 'package:finance_tracker/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (previous, current) => previous.loginSt != current.loginSt,
        listener: (context, state) {
          if (state.loginSt.isLoaded()) {
            showSuccessToast(
              "Profilga kirish muvaffaqiyatli amalga oshirildi!",
            );
            context.go(Routes.main);
          }

          if (state.loginSt.isError()) {
            showErrorToast(state.errorText);
          }
        },
        builder: (context, state) {
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
                      validator: (value) {
                        return ValidatorHelpers.validateEmail(value: value!);
                      },
                    ),
                    20.verticalSpace,
                    AppTextFormField(
                      obscure: true,
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      prefixIconPath: context.appSvgs.icPassword,
                      hintText: AppLocaleKeys.password,
                      validator: (value) {
                        return ValidatorHelpers.validatePassword(value: value!);
                      },
                    ),
                    24.verticalSpace,
                    AppButton(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                            AuthEvent.logIn(
                              params: LoginUseCaseParams(
                                email: _emailController.text.trim(),
                                password: _passwordController.text.trim(),
                              ),
                            ),
                          );
                        }
                      },
                      isLoading: state.loginSt.isLoading(),
                      text: AppLocaleKeys.login,
                    ),
                    10.verticalSpace,
                    Align(
                      alignment: AlignmentGeometry.centerRight,
                      child: TextButton(
                        onPressed: () {
                          context.push(Routes.forgotPassword);
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
        },
      ),
    );
  }
}
