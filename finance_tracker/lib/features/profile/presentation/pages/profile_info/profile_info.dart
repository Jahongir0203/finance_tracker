import 'package:finance_tracker/features/profile/presentation/pages/profile_info/widgets/w_user_info.dart';
import 'package:finance_tracker/features/profile/presentation/pages/profile_info/widgets/w_logout_dialog.dart';
import 'package:finance_tracker/features/profile/presentation/pages/profile_pages/widgets/w_profile_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../exports.dart';
import '../../blocs/user_bloc/user_bloc.dart';

class ProfileInfoPage extends StatelessWidget {
  const ProfileInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: WAppBar(title: "Profil"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.verticalSpace,
              WUserInfo(user: state.user),
              40.verticalSpace,
              Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profil sozlamalari",
                    style: context.textStyle.size18Semibold,
                  ),
                  10.verticalSpace,
                  WProfileItem(
                    onTap: () {},
                    icon: CupertinoIcons.person_alt,
                    title: "Profilni tahrirlash",
                  ),
                  WProfileItem(
                    onTap: () {
                      //context.push(Routes.forgotPassword);
                    },
                    icon: CupertinoIcons.lock_fill,
                    title: "Parolni o'zgartirish",
                  ),
                  WProfileItem(
                    onTap: () {
                      WLogOutDialog(
                        onPressedYes: () {
                          context.read<UserBloc>().add(UserEvent.logOut());
                          context.go(Routes.login);
                        },
                      ).show(context);
                    },
                    iconColor: AppColors.cRed,
                    icon: CupertinoIcons.square_arrow_right_fill,
                    title: "Chiqish",
                  ),
                ],
              ),
            ],
          ).paddingSymmetric(horizontal: 16),
        );
      },
    );
  }
}
