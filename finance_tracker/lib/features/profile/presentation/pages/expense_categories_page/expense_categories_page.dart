import 'package:finance_tracker/features/common/presentation/mixins/expense_categories_mixin.dart';

import '../../../../../exports.dart';

class ExpenseCategoriesPage extends StatelessWidget
    with ExpenseCategoriesMixin {

  @override
  Widget build(BuildContext context) {
    return WLayout(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: WAppBar(title: "Xarajatlar kategoriyasi"),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: constraints.maxHeight,
                minHeight: constraints.maxHeight,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                padding: EdgeInsets.only(top: 20),
                itemBuilder: (context, index) {
                  final data = expenses[index];
                  return ListTile(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 16
                    ),
                    leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: data.color.newWithOpacity(.3),
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Center(
                          child: Text(
                            data.icon,
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      data.name,
                      style: context.textStyle.size18Semibold,
                    ),
                  );
                },
                separatorBuilder: (context, index) => 2.verticalSpace,
                itemCount: expenses.length,
              ),
            );
          },
        ),
      ),
    );
  }
}
