import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:movingPictures/infrastructure/auth/app_user_data/app_user_data_dtos.dart';

import '../../../domain/auth/app_user_data/app_user_data.dart';
import '../../../domain/auth/app_user_data/app_user_data_failure.dart';
import '../../../domain/auth/app_user_data/app_user_data_interface.dart';
import '../../core/firestore_helper.dart';

class FirebaseAppUserDataRepository implements AppUserDataInterface {
  final FirebaseFirestore _firestore;

  FirebaseAppUserDataRepository(this._firestore);

  @override
  Future<Either<AppUserDataFailure, Unit>> create(
      AppUserData appUserData) async {
    try {
      final userDoc = await _firestore.userDocument();
      final appDataDto = AppUserDataDto.fromDomain(appUserData);

      await userDoc.userDataCollection
          .doc(appUserData.id.getOrCrash())
          .set(appDataDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AppUserDataFailure.insufficientPermissions());
      } else {
        //log error
        return left(const AppUserDataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<AppUserDataFailure, Unit>> update(
      AppUserData appUserData) async {
    try {
      final userDoc = await _firestore.userDocument();
      final appDataDto = AppUserDataDto.fromDomain(appUserData);

      await userDoc.userDataCollection
          .doc(appUserData.id.getOrCrash())
          .update(appDataDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AppUserDataFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const AppUserDataFailure.unableToUpdate());
      } else {
        //log error
        return left(const AppUserDataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<AppUserDataFailure, Unit>> delete(
      AppUserData appUserData) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.userDataCollection
          .doc(appUserData.id.getOrCrash())
          .delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AppUserDataFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const AppUserDataFailure.unableToUpdate());
      } else {
        //log error
        return left(const AppUserDataFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<AppUserDataFailure, AppUserData>> watchAppUserData() async* {
    final userDoc = await _firestore.userDocument();

    yield* userDoc.userDataCollection
        .snapshots()
        .map(
          (snapshot) => right<AppUserDataFailure, AppUserData>(snapshot.docs
              .map((doc) => AppUserDataDto.fromFirestore(doc).toDomain())
              .first),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const AppUserDataFailure.insufficientPermissions());
      } else {
        //log error
        return left(const AppUserDataFailure.unexpected());
      }
    });
  }
}
