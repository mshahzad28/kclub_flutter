import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kclub_flutter/features/splash/splash_screen.dart';

import '../resources/resources.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

class AppRouter {
  AppRouter._();
  static final router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: PagePath.splash,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
}
