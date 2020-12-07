import 'package:auto_route/auto_route_annotations.dart';
import 'package:movingPictures/presentation/home/series/genre_series_screen.dart';

import '../favorites/favorites.dart';
import '../home/movies/cast_movies_screen.dart';
import '../home/movies/genre_movies_screen.dart';
import '../home/movies/movie_info/movie_info.dart';
import '../home/series/serie_info/serie_info.dart';
import '../main_layout_appbar_navbar/main_body_layout.dart';
import '../profile/profile_screen.dart';
import '../signin/sign_in_screen.dart';
import '../splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    CupertinoRoute(page: SplashScreen, initial: true),
    CupertinoRoute(page: SignInScreen),
    CupertinoRoute(page: MainBodyLayout),
    CupertinoRoute(page: ProfileScreen, fullscreenDialog: true),
    CupertinoRoute(page: MovieInfo, fullscreenDialog: true),
    CupertinoRoute(page: SerieInfo, fullscreenDialog: true),
    CupertinoRoute(page: GenreMoviesScreen, fullscreenDialog: true),
    CupertinoRoute(page: GenreSeriesScreen, fullscreenDialog: true),
    CupertinoRoute(page: CastMoviesScreen, fullscreenDialog: true),
    CupertinoRoute(page: Favorites, fullscreenDialog: true),
  ],
  generateNavigationHelperExtension: true,
)
class $AppRouter {}
