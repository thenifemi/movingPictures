import 'package:auto_route/auto_route_annotations.dart';
import 'package:movingPictures/presentation/signin/sign_in_screen.dart';

import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // CupertinoRoute(page: SplashScreen, initial: true),
    CupertinoRoute(page: SignInScreen, initial: true),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
