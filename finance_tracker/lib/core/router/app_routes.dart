import 'package:flutter/cupertino.dart';

import '../../exports.dart';

final navigatorKey = GlobalKey<NavigatorState>();

@singleton
abstract class AppRoutes {
  final GoRouter router = GoRouter(
    initialLocation: Routes.splash,
    navigatorKey: navigatorKey,
    routes: [
      GoRoute(
        path: Routes.splash,
        pageBuilder: (context, state) => CupertinoPage(child: SizedBox()),
      ),
    ],
  );
}
