import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/add_expense/data/datasource/add_expenses_datasource.dart';
import 'package:finance_tracker/features/add_expense/data/models/expenses_model.dart';

part 'add_expenses_event.dart';

part 'add_expenses_state.dart';

part 'add_expenses_bloc.freezed.dart';

@injectable
class AddExpensesBloc extends Bloc<AddExpensesEvent, AddExpensesState> {
  final AddExpensesDataSource _dataSource;

  AddExpensesBloc(this._dataSource) : super(const AddExpensesState()) {
    on<AddExpensesEvent>((event, emit) async {
      emit(state.copyWith(status: RequestStatus.loading));
      try {
        await _dataSource.addExpenses(expenses: event.expenses);
        emit(state.copyWith(status: RequestStatus.loaded));
      } catch (e) {
        emit(
          state.copyWith(status: RequestStatus.error, errorText: e.toString()),
        );
      }
    });
  }
}
