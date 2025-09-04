part of 'main_bloc.dart';

@freezed
abstract class MainEvent with _$MainEvent {
  const factory MainEvent.changed({required int index}) = _Changed;
}
