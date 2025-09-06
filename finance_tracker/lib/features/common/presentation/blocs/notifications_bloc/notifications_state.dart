part of 'notifications_bloc.dart';

@freezed
abstract class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    @Default(false) bool appNtfPermission,
    @Default(false) bool userNtfPermission,
  }) = _NotificationsState;
}
