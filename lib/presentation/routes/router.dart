import 'package:auto_route/auto_route_annotations.dart';
import 'package:movingPictures/presentation/home/movies/genre_movies_screen.dart';
import 'package:movingPictures/presentation/movie_or_series_info/movie_or_series_info.dart';
import 'package:movingPictures/presentation/profile/profile_screen.dart';

import '../main_layout_appbar_navbar/main_body_layout.dart';
import '../signin/sign_in_screen.dart';
import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CupertinoRoute(page: SplashScreen, initial: true),
    CupertinoRoute(page: SignInScreen),
    CupertinoRoute(page: MainBodyLayout),
    CupertinoRoute(page: ProfileScreen, fullscreenDialog: true),
    CupertinoRoute(page: MovieOrSeriesInfo, fullscreenDialog: true),
    CupertinoRoute(page: GenreMoviesScreen, fullscreenDialog: true),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
