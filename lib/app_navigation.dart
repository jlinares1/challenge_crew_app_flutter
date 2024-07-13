import 'package:challenge_crew_app_flutter/screens/bottom_tab_screens/bottom_tabs_nested_navigation.dart';
import 'package:challenge_crew_app_flutter/screens/bottom_tab_screens/challenge_screen.dart';
import 'package:challenge_crew_app_flutter/screens/bottom_tab_screens/home_screen.dart';
import 'package:challenge_crew_app_flutter/screens/login_screen.dart';
import 'package:challenge_crew_app_flutter/screens/profile_creation_screen.dart';
import 'package:challenge_crew_app_flutter/screens/bottom_tab_screens/profile_screen.dart';
import 'package:challenge_crew_app_flutter/screens/registration_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellBottomTabs');
  static final _shellNavigatorChallengeKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellBottomTabs');
  static final _shellNavigatorProfileKey =
      GlobalKey<NavigatorState>(debugLabel: 'shellBottomTabs');

  static final router = GoRouter(
    initialLocation: '/loginScreen',
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: LoginScreen.id,
        path: '/loginScreen',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          name: RegistrationScreen.id,
          path: '/registrationScreen',
          builder: (context, state) => const RegistrationScreen()),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: ProfileCreationScreen.id,
        path: '/',
        builder: (context, state) => const ProfileCreationScreen(),
      ),
      StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return BottomTabsNestedNavigation(navigationShell: navigationShell);
          },
          branches: [
            StatefulShellBranch(
              navigatorKey: _shellNavigatorHomeKey,
              routes: [
                GoRoute(
                  name: HomeScreen.id,
                  path: '/homeScreen',
                  pageBuilder: (context, state) =>
                      NoTransitionPage(child: HomeScreen()),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorChallengeKey,
              routes: [
                GoRoute(
                  name: ChallengeScreen.id,
                  path: '/challengeScreen',
                  pageBuilder: (context, state) =>
                      NoTransitionPage(child: ChallengeScreen()),
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _shellNavigatorProfileKey,
              routes: [
                GoRoute(
                  name: ProfileScreen.id,
                  path: '/profileScreen',
                  pageBuilder: (context, state) =>
                      NoTransitionPage(child: ProfileScreen()),
                ),
              ],
            )
          ])
    ],
  );
}
