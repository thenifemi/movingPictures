// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/auth/app_user.dart';
import '../../domain/home/movies/movie/movie.dart';
import '../../domain/home/shared_classes/cast/cast.dart';
import '../../domain/home/shared_classes/genres/genre.dart';
import '../favorites/favorites.dart';
import '../home/movies/cast_movies_screen.dart';
import '../home/movies/genre_movies_screen.dart';
import '../home/movies/movie_info/movie_info.dart';
import '../main_layout_appbar_navbar/main_body_layout.dart';
import '../profile/profile_screen.dart';
import '../signin/sign_in_screen.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String signInScreen = '/sign-in-screen';
  static const String mainBodyLayout = '/main-body-layout';
  static const String profileScreen = '/profile-screen';
  static const String movieInfo = '/movie-info';
  static const String genreMoviesScreen = '/genre-movies-screen';
  static const String castMoviesScreen = '/cast-movies-screen';
  static const String favorites = '/Favorites';
  static const all = <String>{
    splashScreen,
    signInScreen,
    mainBodyLayout,
    profileScreen,
    movieInfo,
    genreMoviesScreen,
    castMoviesScreen,
    favorites,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.signInScreen, page: SignInScreen),
    RouteDef(Routes.mainBodyLayout, page: MainBodyLayout),
    RouteDef(Routes.profileScreen, page: ProfileScreen),
    RouteDef(Routes.movieInfo, page: MovieInfo),
    RouteDef(Routes.genreMoviesScreen, page: GenreMoviesScreen),
    RouteDef(Routes.castMoviesScreen, page: CastMoviesScreen),
    RouteDef(Routes.favorites, page: Favorites),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const SplashScreen(),
        settings: data,
      );
    },
    SignInScreen: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => SignInScreen(),
        settings: data,
      );
    },
    MainBodyLayout: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => MainBodyLayout(),
        settings: data,
      );
    },
    ProfileScreen: (data) {
      final args = data.getArgs<ProfileScreenArguments>(
        orElse: () => ProfileScreenArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => ProfileScreen(
          key: args.key,
          appTextTheme: args.appTextTheme,
          user: args.user,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    MovieInfo: (data) {
      final args = data.getArgs<MovieInfoArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => MovieInfo(
          key: args.key,
          movie: args.movie,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    GenreMoviesScreen: (data) {
      final args = data.getArgs<GenreMoviesScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => GenreMoviesScreen(
          key: args.key,
          genre: args.genre,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    CastMoviesScreen: (data) {
      final args = data.getArgs<CastMoviesScreenArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => CastMoviesScreen(
          key: args.key,
          cast: args.cast,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    Favorites: (data) {
      final args = data.getArgs<FavoritesArguments>(nullOk: false);
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Favorites(
          key: args.key,
          automaticallyImplyLeading: args.automaticallyImplyLeading,
          tabController: args.tabController,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushSignInScreen() => push<dynamic>(Routes.signInScreen);

  Future<dynamic> pushMainBodyLayout() => push<dynamic>(Routes.mainBodyLayout);

  Future<dynamic> pushProfileScreen({
    Key key,
    TextTheme appTextTheme,
    AppUser user,
  }) =>
      push<dynamic>(
        Routes.profileScreen,
        arguments: ProfileScreenArguments(
            key: key, appTextTheme: appTextTheme, user: user),
      );

  Future<dynamic> pushMovieInfo({
    Key key,
    @required Movie movie,
  }) =>
      push<dynamic>(
        Routes.movieInfo,
        arguments: MovieInfoArguments(key: key, movie: movie),
      );

  Future<dynamic> pushGenreMoviesScreen({
    Key key,
    @required Genre genre,
  }) =>
      push<dynamic>(
        Routes.genreMoviesScreen,
        arguments: GenreMoviesScreenArguments(key: key, genre: genre),
      );

  Future<dynamic> pushCastMoviesScreen({
    Key key,
    @required Cast cast,
  }) =>
      push<dynamic>(
        Routes.castMoviesScreen,
        arguments: CastMoviesScreenArguments(key: key, cast: cast),
      );

  Future<dynamic> pushFavorites({
    Key key,
    @required bool automaticallyImplyLeading,
    TabController tabController,
  }) =>
      push<dynamic>(
        Routes.favorites,
        arguments: FavoritesArguments(
            key: key,
            automaticallyImplyLeading: automaticallyImplyLeading,
            tabController: tabController),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ProfileScreen arguments holder class
class ProfileScreenArguments {
  final Key key;
  final TextTheme appTextTheme;
  final AppUser user;
  ProfileScreenArguments({this.key, this.appTextTheme, this.user});
}

/// MovieInfo arguments holder class
class MovieInfoArguments {
  final Key key;
  final Movie movie;
  MovieInfoArguments({this.key, @required this.movie});
}

/// GenreMoviesScreen arguments holder class
class GenreMoviesScreenArguments {
  final Key key;
  final Genre genre;
  GenreMoviesScreenArguments({this.key, @required this.genre});
}

/// CastMoviesScreen arguments holder class
class CastMoviesScreenArguments {
  final Key key;
  final Cast cast;
  CastMoviesScreenArguments({this.key, @required this.cast});
}

/// Favorites arguments holder class
class FavoritesArguments {
  final Key key;
  final bool automaticallyImplyLeading;
  final TabController tabController;
  FavoritesArguments(
      {this.key, @required this.automaticallyImplyLeading, this.tabController});
}
