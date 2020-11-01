import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/app_user.dart';
import '../../domain/auth/app_user_failure.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/auth_repository_interface.dart';
import '../../domain/core/errors.dart';
import '../../injection.dart';
import '../core/firestore_helper.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: AuthInterface)
class FirebaseAuthRepository implements AuthInterface {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  FirebaseAuthRepository(
    this._firebaseAuth,
    this._googleSignIn,
    this._firestore,
  );

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      //returning [unit] because the transaction was successsful with no errors.
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((value) => storeGoogleUser())
          .then((r) => right(unit));
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<AppUser>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<Either<AuthFailure, Unit>> storeGoogleUser() async {
    try {
      final userDoc = await _firestore.userDocument();

      final userOption = await getIt<AuthInterface>().getSignedInUser();
      final user = userOption.getOrElse(() => throw NotAuthenticatedError());

      final Map<String, dynamic> userData = {
        "email": user.email,
        "name": user.name,
        "photoURL": user.photoUrl,
        "uid": user.id.getOrCrash()
      };

      await userDoc.userDataCollection.doc(user.name).set(userData);

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AuthFailure.serverError());
      } else {
        //log error
        return left(const AuthFailure.unexpected());
      }
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

  @override
  Stream<Either<AppUserFailure, AppUser>> watchUserProfile() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.userDataCollection
        .snapshots()
        .map((snapshot) => right<AppUserFailure, AppUser>(
              AppUser.fromFirebase(snapshot.docs.first),
            ))
        .handleError((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const AppUserFailure.insufficientPermissions());
      } else {
        //log error
        return left(const AppUserFailure.unexpected());
      }
    });
  }
}
