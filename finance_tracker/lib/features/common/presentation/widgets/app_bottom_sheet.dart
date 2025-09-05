import 'package:flutter/cupertino.dart';

import '../../../../exports.dart';

class AppBottomModalSheet extends StatelessWidget {
  const AppBottomModalSheet({
    super.key,
    required this.title,
    required this.child,
  });

  final String title;
  final Widget child;

  show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Wrap(children: [this]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.color.scaffoldBg,
      elevation: 2,
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: SafeArea(
        child: SizedBox(
          width: context.w,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.color.scaffoldBg,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                11.verticalSpace,
                WDecoratedBottomContainer(),
                10.verticalSpace,
                _BottomSheetHeader(title: title),
                child,
                20.verticalSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BottomSheetHeader extends StatelessWidget {
  const _BottomSheetHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: context.textStyle.size18Semibold),
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(CupertinoIcons.xmark, color: Colors.blueGrey),
        ),
      ],
    ).paddingSymmetric(horizontal: 16);
  }
}
