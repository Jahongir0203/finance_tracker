import 'package:finance_tracker/features/profile/presentation/pages/profile_info/widgets/w_user_info.dart';
import 'package:finance_tracker/features/profile/presentation/pages/profile_pages/widgets/w_profile_item.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../exports.dart';

class ProfileInfoPage extends StatelessWidget {
  ProfileInfoPage({super.key});

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: WAppBar(title: "Profil"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          20.verticalSpace,
          WUserInfo(user: user),
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
                  context.push(Routes.forgotPassword);
                },
                icon: CupertinoIcons.lock_fill,
                title: "Parolni o'zgartirish",
              ),
              WProfileItem(
                onTap: () {
                  showCupertinoDialog(
                    context: context,
                    barrierDismissible: true,

                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text(
                          "Chiqish",
                          style: context.textStyle.size16Regular2.copyWith(
                            fontSize: 22,
                          ),
                        ),
                        content: Text(
                          "Haqiqatdan ham profildan chiqmoqchimisiz?",
                          style: context.textStyle.size16Regular,
                        ).paddingOnly(top: 10),
                        actions: [
                          MaterialButton(
                            onPressed: () {},
                            child: Text(
                              "Ha",
                              style: context.textStyle.size16Medium.copyWith(
                                color: AppColors.cRed,
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: Text(
                              "Yo'q",
                              style: context.textStyle.size16Medium.copyWith(
                                color: AppColors.cBlue,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
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
  }
}
