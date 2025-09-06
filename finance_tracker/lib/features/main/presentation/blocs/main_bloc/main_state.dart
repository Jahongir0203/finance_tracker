part of 'main_bloc.dart';

@freezed
abstract class MainState with _$MainState {
  const factory MainState({@Default(0) int index}) = _MainState;
}
