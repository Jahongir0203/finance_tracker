import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../exports.dart';
import '../../../../../common/presentation/blocs/theme_bloc/theme_bloc.dart';

class WThemeChanger extends StatelessWidget {
  const WThemeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Column(
          children: [
            _WThemeItem(
              onTap: () {
                context.read<ThemeBloc>().add(
                  ThemeEvent.started(isLightTheme: true),
                );
                context.pop();
              },
              icon: CupertinoIcons.sun_max_fill,
              title: "Kunduzgi",
              value: state.themeMode == ThemeMode.light,
            ),
            _WThemeItem(
              onTap: () {
                context.read<ThemeBloc>().add(
                  ThemeEvent.started(isLightTheme: false),
                );
                context.pop();
              },
              icon: CupertinoIcons.moon_fill,
              title: "Tungi",
              value: state.themeMode == ThemeMode.dark,
            ),
          ],
        );
      },
    );
  }
}

class _WThemeItem extends StatelessWidget {
  const _WThemeItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.value,
    required this.icon,
  });

  final VoidCallback onTap;
  final String title;
  final bool value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.cTransparent,
      child: ListTile(
        onTap: onTap,
        tileColor: AppColors.cTransparent,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(icon, color: AppColors.c0E33F3, size: 26),
        title: Text(title, style: context.textStyle.size16SemiBold),
        trailing: AppRadioBox(value: value),
      ),
    );
  }
}
