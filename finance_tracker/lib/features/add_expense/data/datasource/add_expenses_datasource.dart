import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finance_tracker/exports.dart';
import 'package:finance_tracker/features/add_expense/data/models/expenses_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AddExpensesDataSource {
  Future<void> addExpenses({required ExpensesModel expenses});
}

@LazySingleton(as: AddExpensesDataSource)
class AddExpensesDataSourceImpl extends AddExpensesDataSource {
  final _db = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  String get _uid => _auth.currentUser!.uid;

  CollectionReference<Map<String, dynamic>> get _expensesRef =>
      _db.collection('users').doc(_uid).collection("expenses");

  @override
  Future<void> addExpenses({required ExpensesModel expenses}) async {
    final docRef = _expensesRef.doc();
    final newExpense = expenses.copyWith(id: docRef.id);
    await docRef.set(newExpense.toMap());
  }

  // adddExpense({required ExpensesModel expenses}) async {
  //   final docRef = _expensesRef.doc();
  //   final newExpense = expenses.copyWith(id: docRef.id);
  //   await docRef.set(newExpense.toMap());
  // }

  Stream<List<ExpensesModel>> getExpenses() {
    return _expensesRef
        .orderBy('date', descending: true)
        .snapshots(includeMetadataChanges: true)
        .map(
          (snapshot) =>
              snapshot.docs
                  .map(
                    (doc) => ExpensesModel.fromMap(doc.id.toString(), {
                      ...doc.data(),
                    }),
                  )
                  .toList(),
        );
  }
}
