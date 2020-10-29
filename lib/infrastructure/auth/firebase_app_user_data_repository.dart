import 'package:movingPictures/domain/auth/app_user_data_failure.dart';
import 'package:movingPictures/domain/auth/app_user_data.dart';
import 'package:dartz/dartz.dart';
import 'package:movingPictures/domain/auth/app_user_data_repository_interface.dart';

class FirebaseAppUserDataRepository implements AppUserDataInterface {
  @override
  Future<Either<AppUserDataFailure, Unit>> create(AppUserData appUserData) {
    // TODO: implement create
    throw UnimplementedError();
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
