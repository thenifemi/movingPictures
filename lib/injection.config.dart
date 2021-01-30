// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:cloud_firestore/cloud_firestore.dart';
// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/sign_in/sign_in_bloc.dart';
import 'application/auth/user_profile/user_profile_bloc.dart';
import 'application/home/casts/casts_bloc.dart';
import 'application/home/movies/casts/casts_bloc.dart' as movingPictures;
import 'application/home/movies/favorite_movies/favoritemovies_bloc.dart';
import 'application/home/movies/genres/genres_bloc.dart';
import 'application/home/movies/movies/movies_bloc.dart';
import 'application/home/series/casts/casts_bloc.dart' as movingPictures1;
import 'application/home/series/favorite_series/favoriteseries_bloc.dart';
import 'application/home/series/genres/genres_bloc.dart' as movingPictures2;
import 'application/home/series/series/series_bloc.dart';
import 'application/people/people_bloc.dart';
import 'application/search/search_bloc.dart';
import 'domain/auth/auth_repository_interface.dart';
import 'domain/home/movies/favorite_movies_interface.dart';
import 'domain/home/movies/movies_interface.dart';
import 'domain/home/series/favorite_series_interface.dart';
import 'domain/home/series/series_interface.dart';
import 'domain/home/shared_classes/cast/cast_interface.dart';
import 'domain/people/people_interface.dart';
import 'domain/search/search_interface.dart';
import 'infrastructure/auth/firebase_auth_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'infrastructure/home/casts/casts_repository.dart';
import 'infrastructure/home/movies/favorite_movies_repository.dart';
import 'infrastructure/home/movies/movies_repository.dart';
import 'infrastructure/home/series/favorite_series_repository.dart';
import 'infrastructure/home/series/series_repository.dart';
import 'infrastructure/people/people_repository.dart';
import 'infrastructure/search/search_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseinjectableModule = _$FirebaseinjectableModule();
  gh.lazySingleton<CastInterface>(() => CastRepository());
  gh.factory<CastsBloc>(() => CastsBloc(get<CastInterface>()));
  gh.lazySingleton<FirebaseAuth>(() => firebaseinjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseinjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseinjectableModule.googleSignIn);
  gh.lazySingleton<MoviesInterface>(() => MoviesRepository());
  gh.lazySingleton<PeopleInterface>(
      () => PeopleRepsitory(get<FirebaseFirestore>()));
  gh.lazySingleton<SearchInterface>(() => SearchRepository());
  gh.lazySingleton<SeriesInterface>(() => SeriesRepository());
  gh.lazySingleton<AuthInterface>(() => FirebaseAuthRepository(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseFirestore>(),
      ));
  gh.factory<movingPictures.CastsBloc>(
      () => movingPictures.CastsBloc(get<MoviesInterface>()));
  gh.factory<movingPictures1.CastsBloc>(
      () => movingPictures1.CastsBloc(get<SeriesInterface>()));
  gh.lazySingleton<FavoriteMoviesInterface>(
      () => FavoriteMoviesRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<FavoriteSeriesInterface>(
      () => FavoriteSeriesRepository(get<FirebaseFirestore>()));
  gh.factory<FavoritemoviesBloc>(
      () => FavoritemoviesBloc(get<FavoriteMoviesInterface>()));
  gh.factory<FavoriteseriesBloc>(
      () => FavoriteseriesBloc(get<FavoriteSeriesInterface>()));
  gh.factory<GenresBloc>(() => GenresBloc(get<MoviesInterface>()));
  gh.factory<movingPictures2.GenresBloc>(
      () => movingPictures2.GenresBloc(get<SeriesInterface>()));
  gh.factory<MoviesBloc>(() => MoviesBloc(get<MoviesInterface>()));
  gh.factory<PeopleBloc>(() => PeopleBloc(get<PeopleInterface>()));
  gh.factory<SearchBloc>(() => SearchBloc(get<SearchInterface>()));
  gh.factory<SeriesBloc>(() => SeriesBloc(get<SeriesInterface>()));
  gh.factory<SignInBloc>(() => SignInBloc(get<AuthInterface>()));
  gh.factory<UserProfileBloc>(() => UserProfileBloc(get<AuthInterface>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<AuthInterface>()));
  return get;
}

class _$FirebaseinjectableModule extends FirebaseinjectableModule {}
