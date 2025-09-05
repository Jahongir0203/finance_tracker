import 'package:cloud_firestore/cloud_firestore.dart';

class ExpensesModel {
  final String? id;
  final double amount;
  final String category;
  final DateTime date;
  final String note;

  ExpensesModel({
    this.id,
    required this.amount,
    required this.category,
    required this.date,
    required this.note,
  });

  Map<String, dynamic> toMap() {
    return {'amount': amount, 'category': category, 'date': date, 'note': note};
  }

  factory ExpensesModel.fromMap(String id, Map<String, dynamic> map) {
    return ExpensesModel(
      id: id,
      amount: (map['amount'] as num).toDouble(),
      category: map['category'] ?? '',
      date: (map['date'] as Timestamp).toDate(),
      note: map['note'] ?? '',
    );
  }

  ExpensesModel copyWith({
    String? id,
    double? amount,
    String? category,
    DateTime? date,
    String? note,
  }) {
    return ExpensesModel(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      category: category ?? this.category,
      date: date ?? this.date,
      note: note ?? this.note,
    );
  }
}
