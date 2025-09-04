import 'package:finance_tracker/features/common/presentation/blocs/theme_bloc/theme_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

import 'exports.dart';
import 'firebase_options.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await StorageService.init();
  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ThemeBloc>()..add(ThemeEvent.loaded()),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return ToastificationWrapper(
            child: MaterialApp.router(
              title: AppLocaleKeys.monex,
              debugShowCheckedModeBanner: false,
              darkTheme: AppTheme.darkTheme,
              theme: AppTheme.lightTheme,
              themeMode: state.themeMode,
              routerConfig: AppRoutes.router,
            ),
          );
        },
      ),
    );
  }
}
