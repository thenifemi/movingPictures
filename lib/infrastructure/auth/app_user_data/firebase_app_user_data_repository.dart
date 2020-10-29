import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import '../../../domain/auth/app_user_data/app_user_data.dart';
import '../../../domain/auth/app_user_data/app_user_data_failure.dart';
import '../../../domain/auth/app_user_data/app_user_data_repository_interface.dart';
import '../../core/firestore_helper.dart';

class FirebaseAppUserDataRepository implements AppUserDataInterface {
  final FirebaseFirestore _firestore;

  FirebaseAppUserDataRepository(this._firestore);

  @override
  Future<Either<AppUserDataFailure, Unit>> create(
      AppUserData appUserData) async {
    final userDoc = await _firestore.userDocument();
    // await userDoc.userDataCollection.doc(appUserData.id.getOrCrash()).set();
  }

  @override
  Future<Either<AppUserDataFailure, Unit>> delete(AppUserData appUserData) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<AppUserDataFailure, Unit>> update(AppUserData appUserData) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
