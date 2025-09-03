import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../exports.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return WLayout(
      child: Scaffold(
        bottomNavigationBar: FlashyTabBar(
          selectedIndex: index,
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
              title: Text("Home"),
            ),
            FlashyTabBarItem(
              activeColor: AppColors.c0E33F3,
              inactiveColor: context.color.scaffoldBg,
              icon: Icon(
                CupertinoIcons.doc_text,
                size: 24,
                color: AppColors.cB0B8BF,
              ),
              title: Text("Saving"),
            ),
            FlashyTabBarItem(
              activeColor: AppColors.c0E33F3,
              inactiveColor: context.color.scaffoldBg,
              icon: Icon(
                CupertinoIcons.add_circled,
                size: 24,
                color: AppColors.cB0B8BF,
              ),
              title: Text("Add"),
            ),
            FlashyTabBarItem(
              activeColor: AppColors.c0E33F3,
              inactiveColor: context.color.scaffoldBg,
              icon: Icon(
                CupertinoIcons.chart_bar,
                size: 24,
                color: AppColors.cB0B8BF,
              ),
              title: Text("Bell"),
            ),
            FlashyTabBarItem(
              activeColor: AppColors.c0E33F3,
              inactiveColor: context.color.scaffoldBg,
              icon: Icon(Icons.person, size: 24, color: AppColors.cB0B8BF),
              title: Text("Setting"),
            ),
          ],
          onItemSelected: (value) {
            setState(() {
              index = value;
            });
          },
        ),
      ),
    );
  }
}
