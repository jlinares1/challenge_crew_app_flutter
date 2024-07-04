import 'package:challenge_crew_app_flutter/screens/login_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: LoginScreen.id,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: LoginScreen.id,
        path: '/',
        builder: (context, state) => const LoginScreen(),
      )
    ],
  );
}
