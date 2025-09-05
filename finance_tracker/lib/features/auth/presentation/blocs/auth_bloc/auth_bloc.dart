import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/auth/domain/usecases/login_usecase.dart';
import 'package:finance_tracker/features/auth/domain/usecases/register_usecase.dart';
import 'package:finance_tracker/features/auth/domain/usecases/update_password_usecase.dart';
import 'package:finance_tracker/features/common/presentation/widgets/w_snack_bar.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;
  final UpdatePasswordUseCase _passwordUseCase;

  AuthBloc(this._loginUseCase, this._registerUseCase, this._passwordUseCase)
    : super(const AuthState()) {
    on<_Register>((event, emit) async {
      emit(state.copyWith(registerSt: RequestStatus.loading));

      final response = await _registerUseCase.call(event.params);

      response.fold(
        (l) {
          emit(
            state.copyWith(
              registerSt: RequestStatus.error,
              errorText: l.message,
            ),
          );
        },
        (r) {
          emit(state.copyWith(registerSt: RequestStatus.loaded));
        },
      );
    });

    on<_LogIn>((event, emit) async {
      emit(state.copyWith(loginSt: RequestStatus.loading));

      final response = await _loginUseCase.call(event.params);
      response.fold(
        (l) {
          emit(
            state.copyWith(loginSt: RequestStatus.error, errorText: l.message),
          );
        },
        (r) {
          emit(state.copyWith(loginSt: RequestStatus.loaded));
        },
      );
    });

    on<_Update>((event, emit) async {
      emit(state.copyWith(updateSt: RequestStatus.loading));
      final response = await _passwordUseCase.call(event.params);
      response.fold(
        (l) {
          emit(
            state.copyWith(updateSt: RequestStatus.error, errorText: l.message),
          );
        },
        (r) {
          emit(state.copyWith(updateSt: RequestStatus.loaded));
        },
      );
    });
  }
}
