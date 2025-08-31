part of 'splash_bloc.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState({
    @Default(RequestStatus.initial) RequestStatus status,
  }) = _SplashState;
}
