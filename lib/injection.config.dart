// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'domain/auth/auth_repository_interface.dart';
import 'application/home/movies/casts/casts_bloc.dart';
import 'domain/home/movies/favorite_movies_interface.dart';
import 'infrastructure/home/movies/favorite_movies_repository.dart';
import 'application/home/movies/favorite_movies/favoritemovies_bloc.dart';
import 'infrastructure/auth/firebase_auth_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'application/home/movies/genres/genres_bloc.dart';
import 'application/home/movies/movies/movies_bloc.dart';
import 'domain/home/movies/movies_interface.dart';
import 'infrastructure/home/movies/movies_repository.dart';
import 'application/auth/sign_in/sign_in_bloc.dart';
import 'application/auth/user_profile/user_profile_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseinjectableModule = _$FirebaseinjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseinjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseinjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseinjectableModule.googleSignIn);
  gh.lazySingleton<MoviesInterface>(() => MoviesRepository());
  gh.lazySingleton<AuthInterface>(() => FirebaseAuthRepository(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseFirestore>(),
      ));
  gh.factory<CastsBloc>(() => CastsBloc(get<MoviesInterface>()));
  gh.lazySingleton<FavoriteMoviesInterface>(
      () => FavoriteMoviesRepository(get<FirebaseFirestore>()));
  gh.factory<FavoritemoviesBloc>(
      () => FavoritemoviesBloc(get<FavoriteMoviesInterface>()));
  gh.factory<GenresBloc>(() => GenresBloc(get<MoviesInterface>()));
  gh.factory<MoviesBloc>(() => MoviesBloc(get<MoviesInterface>()));
  gh.factory<SignInBloc>(() => SignInBloc(get<AuthInterface>()));
  gh.factory<UserProfileBloc>(() => UserProfileBloc(get<AuthInterface>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<AuthInterface>()));
  return get;
}

class _$FirebaseinjectableModule extends FirebaseinjectableModule {}
