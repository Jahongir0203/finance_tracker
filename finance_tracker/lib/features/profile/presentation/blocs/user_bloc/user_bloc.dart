import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/auth/domain/usecases/update_password_usecase.dart';
import 'package:finance_tracker/features/profile/domain/usecase/logout_usecase.dart';
import 'package:finance_tracker/features/profile/domain/usecase/update_user_usecase.dart';
import 'package:finance_tracker/features/profile/domain/usecase/user_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final UserUseCase _userUseCase;
  final LogOutUseCase _logOutUSeCase;
  final UpdatePasswordUseCase _passwordUseCase;
  final UpdateUserUseCase _updateUserUseCase;

  UserBloc(
    this._logOutUSeCase,
    this._passwordUseCase,
    this._updateUserUseCase,
    this._userUseCase,
  ) : super(const UserState()) {
    on<_Started>((event, emit) async {
      final response = await _userUseCase.call(NoParams());

      response.fold((l) {}, (r) {
        emit(state.copyWith(user: r));
      });
    });

    on<_Edit>((event, emit) async {
      emit(state.copyWith(editStatus: RequestStatus.loading));
      final response = await _updateUserUseCase.call(event.params);

      response.fold(
        (l) {
          emit(state.copyWith(editStatus: RequestStatus.error));
        },
        (r) {
          emit(state.copyWith(editStatus: RequestStatus.loaded));
        },
      );
    });

    on<_LogOut>((event, emit) async {
      emit(state.copyWith(logOutStatus: RequestStatus.loading));
      final response = await _logOutUSeCase.call(NoParams());

      response.fold(
        (l) {
          emit(state.copyWith(logOutStatus: RequestStatus.error));
        },
        (r) {
          emit(state.copyWith(logOutStatus: RequestStatus.loaded, user: null));
        },
      );
    });

    on<_UpdatePassword>((event, emit) async {
      emit(state.copyWith(updatePasswordStatus: RequestStatus.loading));
      final response = await _passwordUseCase.call(event.params);

      response.fold(
        (l) {
          emit(state.copyWith(updatePasswordStatus: RequestStatus.error));
        },
        (r) {
          emit(state.copyWith(updatePasswordStatus: RequestStatus.loaded));
        },
      );
    });
  }
}
