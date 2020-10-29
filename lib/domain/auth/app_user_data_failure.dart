import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_user_data_failure.freezed.dart';

@freezed
abstract class AppUserDataFailure with _$AppUserDataFailure {
  const factory AppUserDataFailure.unexpected() = _Unexpected;
  const factory AppUserDataFailure.insufficientPermissions() =
      _InsufficientPermissions;
  const factory AppUserDataFailure.unableToUpdate() = _UnableToUpdate;
}
