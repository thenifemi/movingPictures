import 'dart:convert';

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
        "id": user.id
      };

      await userDoc.set(userData);

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

    yield* userDoc.snapshots().map((snapshot) {
      final user = snapshot.data();

      final Map<String, dynamic> appUser = {
        "photoUrl":
            'https://lh3.googleusercontent.com/a-/AOh14Gj-0JNGTqeI1bk7g_sw-PhQkGQIseZd967JTPFQiG4=s96-c',
        "name": 'Nifemi',
        "id": "PbZxlpUy0EQs6SZHRy61ZBXCLiT2",
        "email": 'thenifemi@gmail.com',
      };

      print(user);
      print(appUser);

      final u = AppUser.fromJson(user).toDomain();

      // return right<AppUserFailure, AppUser>(AppUser.fromJson(user));
      return right<AppUserFailure, AppUser>(u);
    }

        // right<AppUserFailure, AppUser>(
        //   AppUser.fromFirebase(snapshot.docs.first).toDomain(),
        // ),
        ).handleError((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const AppUserFailure.insufficientPermissions());
      } else {
        //log error
        return left(const AppUserFailure.unexpected());
      }
    });
  }
}
