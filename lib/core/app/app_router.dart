import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kclub_flutter/features/users/presentation/screens/users_listing_scree.dart';

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
        builder: (context, state) => const UsersListingScreen(),
      ),
    ],
  );
}
