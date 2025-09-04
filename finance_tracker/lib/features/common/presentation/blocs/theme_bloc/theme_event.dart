part of 'theme_bloc.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.loaded() = _Loaded;
  const factory ThemeEvent.started({required bool isLightTheme}) = _Started;
}
