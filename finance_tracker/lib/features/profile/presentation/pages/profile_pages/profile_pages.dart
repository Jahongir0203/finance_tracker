import 'package:finance_tracker/features/common/presentation/blocs/theme_bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../exports.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
              children: [
                Switch.adaptive(
                  value: state.themeMode == ThemeMode.light,
                  onChanged: (value) {
                    context.read<ThemeBloc>().add(
                      ThemeEvent.started(
                        isLightTheme:
                            state.themeMode == ThemeMode.light ? false : true,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
