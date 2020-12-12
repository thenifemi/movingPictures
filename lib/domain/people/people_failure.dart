import 'package:freezed_annotation/freezed_annotation.dart';

part 'people_failure.freezed.dart';

@freezed
abstract class PeopleFailure with _$PeopleFailure {
  const factory PeopleFailure.unexpected() = _Unexpected;
  const factory PeopleFailure.noInternetConnection() = _NoInternetConnection;
  const factory PeopleFailure.unableToAdd() = _UnableToAdd;
  const factory PeopleFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
