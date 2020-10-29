import 'package:dartz/dartz.dart';

import 'app_user_data.dart';
import 'app_user_data_failure.dart';

abstract class AppUserDataInterface {
  Future<Either<AppUserDataFailure, Unit>> create(AppUserData appUserData);
  Future<Either<AppUserDataFailure, Unit>> update(AppUserData appUserData);
  Future<Either<AppUserDataFailure, Unit>> delete(AppUserData appUserData);
}
