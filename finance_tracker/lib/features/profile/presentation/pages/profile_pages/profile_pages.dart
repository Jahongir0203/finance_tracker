import 'package:finance_tracker/features/common/presentation/blocs/theme_bloc/theme_bloc.dart';
import 'package:finance_tracker/features/profile/presentation/pages/profile_pages/widgets/w_profile_item.dart';
import 'package:finance_tracker/features/profile/presentation/pages/profile_pages/widgets/w_theme_changer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../exports.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              spacing: 8,
              mainAxisSize: MainAxisSize.max,
              children: [
                20.verticalSpace,
                WProfileItem(
                  onTap: () {},
                  icon: CupertinoIcons.person_alt,
                  title: "Profil",
                ),

                15.verticalSpace,

                WProfileItem(
                  onTap: () {},
                  icon: CupertinoIcons.cart_fill,
                  title: "Xarajatlar",
                ),
                WProfileItem(
                  onTap: () {},
                  icon: CupertinoIcons.creditcard_fill,
                  title: "Daromadlar",
                ),
                10.verticalSpace,
                WProfileItem(
                  onTap: () {},
                  icon: CupertinoIcons.money_dollar_circle_fill,
                  title: "Asosiy valyuta",
                  trailing: "UZS",
                ),
                WProfileItem(
                  onTap: () {
                    AppBottomModalSheet(
                      title: "Mavzuni tanlang",
                      child: WThemeChanger(),
                    ).show(context);
                  },
                  icon: CupertinoIcons.moon_fill,
                  title: "Ilova mavzusi",
                  trailing: "Kundizgi",
                ),
                WProfileItem(
                  onTap: () {},
                  icon: CupertinoIcons.bell_fill,
                  title: "Eslatmalar",
                ),
                WProfileItem(
                  onTap: () {},
                  icon: CupertinoIcons.time_solid,
                  title: "Eslatmalar vaqti",
                  trailing: "20:00",
                ),
                10.verticalSpace,
                WProfileItem(
                  onTap: () {},
                  icon: CupertinoIcons.lock_fill,
                  title: "Xavfsizlik",
                ),
                WProfileItem(
                  onTap: () {},
                  icon: CupertinoIcons.info_circle_fill,
                  title: "Monex haqida",
                  trailing: "1.0.0",
                ),
              ],
            ).paddingSymmetric(horizontal: 16),
          ),
        );
      },
    );
  }
}
