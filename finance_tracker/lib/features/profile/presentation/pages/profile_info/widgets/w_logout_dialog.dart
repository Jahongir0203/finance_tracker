import 'package:flutter/cupertino.dart';

import '../../../../../../exports.dart';

class WLogOutDialog extends StatelessWidget {
  const WLogOutDialog({super.key, required this.onPressedYes});

  final VoidCallback onPressedYes;

  show(BuildContext context) {
    showCupertinoDialog(context: context, builder: (context) => this);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        "Chiqish",
        style: context.textStyle.size16Regular2.copyWith(fontSize: 22),
      ),
      content: Text(
        "Haqiqatdan ham profildan chiqmoqchimisiz?",
        style: context.textStyle.size16Regular,
      ).paddingOnly(top: 10),
      actions: [
        MaterialButton(
          onPressed: onPressedYes,
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
  }
}
