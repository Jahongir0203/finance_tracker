import 'package:finance_tracker/features/auth/domain/usecases/register_usecase.dart';
import 'package:finance_tracker/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../exports.dart';
import '../../widgets/auth_header.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _repeatPasswordController;
  late TextEditingController _nameController;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _repeatPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _repeatPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listenWhen:
            (previous, current) => previous.registerSt != current.registerSt,
        listener: (context, state) {
          if (state.registerSt.isLoaded()) {
            showSuccessToast(
              "Ro'yhatdan o'tish muvaffaqiyatli amalga oshirildi!",
            );
            context.go(Routes.main);
          }

          if (state.registerSt.isError()) {
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
                      controller: _nameController,
                      keyboardType: TextInputType.text,
                      prefixIconPath: context.appSvgs.icPerson,
                      hintText: AppLocaleKeys.name,
                      validator: (value) {
                        return ValidatorHelpers.validateField(value: value!);
                      },
                    ),
                    20.verticalSpace,
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
                    20.verticalSpace,
                    AppTextFormField(
                      obscure: true,
                      controller: _repeatPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      prefixIconPath: context.appSvgs.icPassword,
                      hintText: AppLocaleKeys.repeatPassword,
                      validator: (value) {
                        return ValidatorHelpers.validatePasswords(
                          value1: value!,
                          value2: _passwordController.text.trim(),
                        );
                      },
                    ),
                    24.verticalSpace,
                    AppButton(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthBloc>().add(
                            AuthEvent.register(
                              params: RegisterUSeCaseParams(
                                _nameController.text.trim(),
                                _emailController.text.trim(),
                                _passwordController.text.trim(),
                              ),
                            ),
                          );
                        }
                      },
                      isLoading: state.registerSt.isLoading(),
                      text: AppLocaleKeys.register,
                    ),
                    20.verticalSpace,
                    AppButton(
                      onTap: () {
                        context.go(Routes.login);
                      },
                      enableShadow: false,
                      borderColor: AppColors.c0E33F3,
                      text: AppLocaleKeys.login,
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
