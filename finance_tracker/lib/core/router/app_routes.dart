import 'package:finance_tracker/features/onboarding/presentation/splash/pages/onboarding_page/onboarding_page.dart';
import 'package:finance_tracker/features/onboarding/presentation/splash/pages/splash_page/splash_page.dart';
import 'package:flutter/cupertino.dart';

import '../../exports.dart';

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
    ],
  );
}
