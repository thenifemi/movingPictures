import 'package:auto_route/auto_route_annotations.dart';
import 'package:movingPictures/presentation/home/home_screen.dart';
import 'package:movingPictures/presentation/signin/sign_in_screen.dart';

import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CupertinoRoute(page: SplashScreen, initial: true),
    CupertinoRoute(page: SignInScreen),
    CupertinoRoute(page: HomeScreen),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
