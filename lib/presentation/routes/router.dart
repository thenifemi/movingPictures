import 'package:auto_route/auto_route_annotations.dart';
import 'package:movingPictures/presentation/profile/profileScreen.dart';

import '../main_layout_appbar_navbar/main_body_layout.dart';
import '../signin/sign_in_screen.dart';
import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CupertinoRoute(page: SplashScreen, initial: true),
    CupertinoRoute(page: SignInScreen),
    CupertinoRoute(page: MainBodyLayout),
    CupertinoRoute(page: ProfileScreen, fullscreenDialog: true),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
