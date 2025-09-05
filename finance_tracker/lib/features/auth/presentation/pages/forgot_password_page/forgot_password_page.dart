import 'package:finance_tracker/features/auth/domain/usecases/update_password_usecase.dart';
import 'package:finance_tracker/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listenWhen:
            (previous, current) => previous.updateSt != current.updateSt,
        listener: (context, state) {
          if (state.updateSt.isLoaded()) {
            showSuccessToast("Parol muvaffaqiyatli o'zgartirildi!");
            context.pop();
          }

          if (state.updateSt.isError()) {
            showErrorToast(state.errorText);
          }
        },
        builder: (context, state) {
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
                                    context.read<AuthBloc>().add(
                                      AuthEvent.update(
                                        params: UpdatePasswordUseCaseParams(
                                          password:
                                              _passwordController.text.trim(),
                                        ),
                                      ),
                                    );
                                  }
                                },
                                isLoading: state.updateSt.isLoading(),
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
        },
      ),
    );
  }
}
