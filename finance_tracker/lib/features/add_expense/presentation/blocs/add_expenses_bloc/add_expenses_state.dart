part of 'add_expenses_bloc.dart';

@freezed
abstract class AddExpensesState with _$AddExpensesState {
  const factory AddExpensesState({
    @Default(RequestStatus.initial) RequestStatus status,
    @Default(null) String? errorText
   }) = _AddExpensesState;
}
