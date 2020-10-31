import 'package:dartz/dartz.dart';

import 'app_user.dart';
import 'auth_failure.dart';

abstract class AuthInterface {
  // [Unit] can be read as void.
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Option<AppUser>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> storeGoogleUser();

  Future<void> signOut();
}
