import 'package:finance_tracker/exports.dart';

part 'theme_event.dart';

part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeState()) {
    on<_Loaded>((event, emit) async {
      final isLight = await getIt<StorageService>().getTheme();
      if (isLight) {
        emit(state.copyWith(themeMode: ThemeMode.light));
      } else {
        emit(state.copyWith(themeMode: ThemeMode.dark));
      }
    });

    on<_Started>((event, emit) async {
      await getIt<StorageService>().setTheme(event.isLightTheme);

      if (event.isLightTheme) {
        emit(state.copyWith(themeMode: ThemeMode.light));
      } else {
        emit(state.copyWith(themeMode: ThemeMode.dark));
      }
    });
  }
}
