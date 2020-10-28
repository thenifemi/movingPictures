import 'package:auto_route/auto_route_annotations.dart';

import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CupertinoRoute(page: SplashScreen, initial: true),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
