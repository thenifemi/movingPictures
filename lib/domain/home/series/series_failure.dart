import 'package:freezed_annotation/freezed_annotation.dart';

part 'series_failure.freezed.dart';

@freezed
abstract class SerieFailure with _$SerieFailure {
  const factory SerieFailure.unexpected() = _Unexpected;
  const factory SerieFailure.noInternetConnection() = _NoInternetConnection;
  const factory SerieFailure.unableToAdd() = _UnableToAdd;
  const factory SerieFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
