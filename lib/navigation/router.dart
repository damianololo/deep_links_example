import 'package:go_router/go_router.dart';

import '../screens/details_screen.dart';
import '../screens/login_screen.dart';
import '../screens/root_screen.dart';
import '../screens/settings_screen.dart';

abstract interface class BuildRouter {
  GoRouter call();
}

final class BuildRouterImpl implements BuildRouter {
  @override
  GoRouter call() {
    return GoRouter(
      initialLocation: '/login',
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: '/',
          builder: (context, state) => const RootScreen(detailsPath: '/'),
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => const SettingsScreen(),
              routes: [
                GoRoute(
                  path: 'details',
                  builder: (context, state) => const DetailsScreen(label: 'B'),
                ),
              ],
            ),
            GoRoute(
              path: 'details',
              builder: (context, state) => const DetailsScreen(label: 'A'),
            ),
          ],
        ),
      ],
    );
  }
}
