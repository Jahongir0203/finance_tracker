import 'package:finance_tracker/features/add_expense/data/datasource/add_expenses_datasource.dart';
import 'package:finance_tracker/features/add_expense/data/models/expenses_model.dart';

import '../../../../../exports.dart';

class AddExpensesPage extends StatelessWidget {
  final AddExpensesDataSourceImpl addExpensesDataSourceImpl =
      AddExpensesDataSourceImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                addExpensesDataSourceImpl.adddExpense(
                  expenses: ExpensesModel(
                    amount: 50000,
                    category: "non",
                    date: DateTime.now(),
                    note: "Simple note",
                  ),
                );
              },
              child: Text("Add"),
            ),

            TextButton(
              onPressed: () async {
                final result = await addExpensesDataSourceImpl.getExpenses();
                print(result.toString());
                print("$result");
              },
              child: Text("GET"),
            ),
          ],
        ),
      ),
    );
  }
}
