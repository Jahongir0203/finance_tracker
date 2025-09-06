import 'package:finance_tracker/core/core.dart';
import 'package:finance_tracker/features/common/data/models/category_model.dart';

mixin ExpenseCategoriesMixin {
  final List<CategoryModel> expenses = [
    CategoryModel(id: 1, name: 'Taksi', icon: '🚖', color: AppColors.taxi),
    CategoryModel(
      id: 2,
      name: 'Transport',
      icon: '🚌',
      color: AppColors.transport,
    ),
    CategoryModel(id: 3, name: 'Oziq-ovqat', icon: '🛒', color: AppColors.food),
    CategoryModel(
      id: 4,
      name: 'Ko\'chada ovqatlanish',
      icon: '🍽️',
      color: AppColors.diningOut,
    ),
    CategoryModel(
      id: 5,
      name: 'Salomatlik',
      icon: '🏥',
      color: AppColors.health,
    ),
    CategoryModel(
      id: 6,
      name: 'Ko\'ngil ochar',
      icon: '🎮',
      color: AppColors.health,
    ),
    CategoryModel(id: 7, name: 'Kiyim', icon: '👕', color: AppColors.clothing),
    CategoryModel(
      id: 8,
      name: 'Oylik to\'lovlar',
      icon: '📄',
      color: AppColors.monthlyBills,
    ),
    CategoryModel(
      id: 9,
      name: 'Sovg\'alar',
      icon: '🎁',
      color: AppColors.gifts,
    ),
  ];
}
