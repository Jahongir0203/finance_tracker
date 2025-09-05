import 'package:finance_tracker/features/add_expense/presentation/pages/add_expenses_page/add_expenses_page.dart';
import 'package:finance_tracker/features/expenses/presentation/pages/expenses_page/expenses_page.dart';
import 'package:finance_tracker/features/home/presentation/pages/home_page/home_page.dart';
import 'package:finance_tracker/features/main/presentation/blocs/main_bloc/main_bloc.dart';
import 'package:finance_tracker/features/main/presentation/pages/main_page/widgets/scale_indexed_stack.dart';
import 'package:finance_tracker/features/profile/presentation/pages/profile_pages/profile_pages.dart';
import 'package:finance_tracker/features/statistics/presentation/pages/statistics_page/statistics_page.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../exports.dart';

class MainPage extends StatelessWidget {
  List<Widget> pages = [
    HomePage(),
    ExpensesPage(),
    AddExpensesPage(),
    StatisticsPage(),
    ProfilePages(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainBloc>(),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return WLayout(
            child: Scaffold(
              body: ScaleIndexedStack(
                index: state.index,
                duration: TimeDelayConst.durationMill300,
                children: pages,
              ),
              bottomNavigationBar: FlashyTabBar(
                selectedIndex: state.index,
                backgroundColor: context.color.scaffoldBg,
                showElevation: false,
                items: [
                  FlashyTabBarItem(
                    activeColor: AppColors.c0E33F3,
                    inactiveColor: context.color.scaffoldBg,
                    icon: Icon(
                      CupertinoIcons.house_fill,
                      size: 24,
                      color: AppColors.cB0B8BF,
                    ),
                    title: Text("Umumiy"),
                  ),
                  FlashyTabBarItem(
                    activeColor: AppColors.c0E33F3,
                    inactiveColor: context.color.scaffoldBg,
                    icon: Icon(
                      CupertinoIcons.doc_text,
                      size: 24,
                      color: AppColors.cB0B8BF,
                    ),
                    title: Text("Xarajatlar"),
                  ),
                  FlashyTabBarItem(
                    activeColor: AppColors.c0E33F3,
                    inactiveColor: context.color.scaffoldBg,
                    icon: Icon(
                      CupertinoIcons.add_circled,
                      size: 24,
                      color: AppColors.cB0B8BF,
                    ),
                    title: Text("Qo'shish"),
                  ),
                  FlashyTabBarItem(
                    activeColor: AppColors.c0E33F3,
                    inactiveColor: context.color.scaffoldBg,
                    icon: Icon(
                      CupertinoIcons.chart_bar,
                      size: 24,
                      color: AppColors.cB0B8BF,
                    ),
                    title: Text("Statistika"),
                  ),
                  FlashyTabBarItem(
                    activeColor: AppColors.c0E33F3,
                    inactiveColor: context.color.scaffoldBg,
                    icon: Icon(
                      Icons.person,
                      size: 24,
                      color: AppColors.cB0B8BF,
                    ),
                    title: Text("Profil"),
                  ),
                ],
                onItemSelected: (value) {
                  context.read<MainBloc>().add(MainEvent.changed(index: value));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
