// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'infrastructure/core/firebase_injectable_module.dart';

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
  return get;
}

class _$FirebaseinjectableModule extends FirebaseinjectableModule {}
