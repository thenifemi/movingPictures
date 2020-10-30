// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'domain/auth/app_user_data/app_user_data_interface.dart';
import 'application/auth/auth_bloc.dart';
import 'domain/auth/auth_repository_interface.dart';
import 'infrastructure/auth/app_user_data/app_user_data_repository.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'application/auth/sign_in_bloc/sign_in_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseinjectableModule = _$FirebaseinjectableModule();
  gh.factory<AuthBloc>(() => AuthBloc(get<AuthInterface>()));
  gh.lazySingleton<FirebaseAuth>(() => firebaseinjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseinjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseinjectableModule.googleSignIn);
  gh.factory<SignInBloc>(() => SignInBloc(get<AuthInterface>()));
  gh.lazySingleton<AppUserDataInterface>(
      () => FirebaseAppUserDataRepository(get<FirebaseFirestore>()));
  return get;
}

class _$FirebaseinjectableModule extends FirebaseinjectableModule {}
