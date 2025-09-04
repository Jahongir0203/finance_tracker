import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/auth/domain/usecases/login_usecase.dart';
import 'package:finance_tracker/features/auth/domain/usecases/register_usecase.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;

  AuthBloc(this._loginUseCase, this._registerUseCase)
    : super(const AuthState()) {
    on<_Register>((event, emit) async {
      emit(state.copyWith(registerSt: RequestStatus.loading));

      final response = await _registerUseCase.call(event.params);

      response.fold(
        (l) {
          emit(state.copyWith(registerSt: RequestStatus.error));
          print("error");
        },
        (r) {
          print("Success");
          emit(state.copyWith(registerSt: RequestStatus.loaded));
        },
      );
    });

    on<_LogIn>((event, emit) async {
      emit(state.copyWith(loginSt: RequestStatus.loading));

      final response = await _loginUseCase.call(event.params);
      response.fold(
        (l) {
          emit(state.copyWith(loginSt: RequestStatus.error));
          print(l.message);
          print("error");
        },
        (r) {
          print("Success");
          emit(state.copyWith(loginSt: RequestStatus.loaded));
        },
      );
    });
  }
}
