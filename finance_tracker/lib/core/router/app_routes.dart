import 'package:finance_tracker/features/auth/presentation/pages/login_page/login_page.dart';
import 'package:finance_tracker/features/auth/presentation/pages/register_page/register_page.dart';
import 'package:flutter/cupertino.dart';
import '../../exports.dart';
import '../../features/onboarding/presentation/pages/onboarding_page/onboarding_page.dart';
import '../../features/onboarding/presentation/pages/splash_page/splash_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

abstract class AppRoutes {
  static GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: Routes.splash,
        pageBuilder: (context, state) => CupertinoPage(child: SplashPage()),
      ),
      GoRoute(
        path: Routes.onBoarding,
        pageBuilder: (context, state) => CupertinoPage(child: OnboardingPage()),
      ),
      GoRoute(
        path: Routes.login,
        pageBuilder: (context, state) => CupertinoPage(child: LoginPage()),
      ),
      GoRoute(
        path: Routes.register,
        pageBuilder: (context, state) => CupertinoPage(child: RegisterPage()),
      ),
    ],
  );
}
