import 'package:dartz/dartz.dart';

import 'app_user.dart';
import 'auth_failure.dart';

abstract class AuthRepositoryInterface {
  // [Unit] can be read as void.
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Option<AppUser>> getSignedInUser();

  Future<void> signOut();
}
