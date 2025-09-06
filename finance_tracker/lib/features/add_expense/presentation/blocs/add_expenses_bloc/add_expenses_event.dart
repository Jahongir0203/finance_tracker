part of 'add_expenses_bloc.dart';

@freezed
abstract class AddExpensesEvent with _$AddExpensesEvent {
  const factory AddExpensesEvent.started( ExpensesModel expenses) =
      _Started;
}
