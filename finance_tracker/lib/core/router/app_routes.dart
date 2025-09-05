import 'package:finance_tracker/features/auth/presentation/pages/forgot_password_page/forgot_password_page.dart';
import 'package:finance_tracker/features/auth/presentation/pages/login_page/login_page.dart';
import 'package:finance_tracker/features/auth/presentation/pages/register_page/register_page.dart';
import 'package:finance_tracker/features/auth/presentation/pages/update_password_success_page/update_password_success_page.dart';
import 'package:finance_tracker/features/main/presentation/pages/main_page/main_page.dart';
import 'package:finance_tracker/features/profile/presentation/pages/expense_categories_page/expense_categories_page.dart';
import 'package:finance_tracker/features/profile/presentation/pages/income_categories_page/income_categories_page.dart';
import 'package:finance_tracker/features/profile/presentation/pages/profile_info/profile_info.dart';
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
      GoRoute(
        path: Routes.forgotPassword,
        pageBuilder:
            (context, state) => CupertinoPage(child: ForgotPasswordPage()),
      ),
      GoRoute(
        path: Routes.updatePasswordSuccess,
        pageBuilder:
            (context, state) =>
                CupertinoPage(child: UpdatePasswordSuccessPage()),
      ),
      GoRoute(
        path: Routes.main,
        pageBuilder: (context, state) => CupertinoPage(child: MainPage()),
      ),
      GoRoute(
        path: Routes.expenseCategory,
        pageBuilder:
            (context, state) => CupertinoPage(child: ExpenseCategoriesPage()),
      ),
      GoRoute(
        path: Routes.profileInfo,
        pageBuilder:
            (context, state) => CupertinoPage(child: ProfileInfoPage()),
      ),
      // GoRoute(
      //   path: Routes.incomeCategory,
      //   pageBuilder:
      //       (context, state) => CupertinoPage(child: IncomeCategoriesPage()),
      // ),
    ],
  );
}
