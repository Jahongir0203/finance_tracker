import 'package:finance_tracker/features/add_expense/data/models/expenses_model.dart';
import 'package:finance_tracker/features/add_expense/presentation/blocs/add_expenses_bloc/add_expenses_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../exports.dart';

class AddExpensesPage extends StatefulWidget {
  @override
  State<AddExpensesPage> createState() => _AddExpensesPageState();
}

class _AddExpensesPageState extends State<AddExpensesPage> {
  late TextEditingController _titleController;
  late TextEditingController _summaController;
  late TextEditingController _dateController;
  late TextEditingController _descriptionController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _titleController = TextEditingController();
    _summaController = TextEditingController();
    _dateController = TextEditingController();
    _descriptionController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _summaController.dispose();
    _dateController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddExpensesBloc>(),
      child: BlocConsumer<AddExpensesBloc, AddExpensesState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status.isLoaded()) {
            _titleController.clear();
            _summaController.clear();
            _dateController.clear();
            _descriptionController.clear();
            showSuccessToast("Xarajatlar muvaffaqiyatli qo'shildi!");
          }

          if (state.status.isError()) {
            showErrorToast(state.errorText);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(56),
              child: WAppBar(title: "Xarajatlarni qo'shish", enableBack: false),
            ),
            body: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.verticalSpace,
                  Text("Xarajat nomi", style: context.textStyle.size16Regular2),
                  AppTextFormField(
                    hintText: "Xarajat",
                    controller: _titleController,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      return ValidatorHelpers.validateField(value: value!);
                    },
                  ),
                  10.verticalSpace,
                  Text(
                    "Xarajat miqdori",
                    style: context.textStyle.size16Regular2,
                  ),
                  AppTextFormField(
                    hintText: "Xarajat miqdori",
                    controller: _summaController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (value) {
                      return ValidatorHelpers.validateField(value: value!);
                    },
                  ),
                  10.verticalSpace,
                  Text("Sana", style: context.textStyle.size16Regular2),
                  AppTextFormField(
                    hintText: "Sana",
                    controller: _dateController,
                    keyboardType: TextInputType.datetime,
                    validator: (value) {
                      return ValidatorHelpers.validateField(value: value!);
                    },
                  ),
                  10.verticalSpace,
                  Text("Izoh", style: context.textStyle.size16Regular2),
                  AppTextFormField(
                    hintText: "Izoh",
                    controller: _descriptionController,
                    keyboardType: TextInputType.text,
                  ),

                  20.verticalSpace,
                  AppButton(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<AddExpensesBloc>().add(
                          AddExpensesEvent.started(
                            ExpensesModel(
                              category: _titleController.text.trim(),
                              amount: double.parse(
                                _summaController.text.trim(),
                              ),

                              date: _dateController.text.trim(),
                              note: _descriptionController.text.trim(),
                            ),
                          ),
                        );
                      }
                    },
                    isLoading: state.status.isLoading(),
                    text: "Qo'shish",
                  ),
                ],
              ).paddingSymmetric(horizontal: 16),
            ),
          );
        },
      ),
    );
  }
}
