import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_failure.freezed.dart';

@freezed
abstract class MovieFailure with _$MovieFailure {
  const factory MovieFailure.unexpected() = _Unexpected;
  const factory MovieFailure.noInternetConnection() = _NoInternetConnection;
  const factory MovieFailure.unableToAdd() = _UnableToAdd;
  const factory MovieFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
