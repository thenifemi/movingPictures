import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_failure.freezed.dart';

@freezed
abstract class MovieFailure with _$MovieFailure {
  const factory MovieFailure.unexpected() = _Unexpected;
  const factory MovieFailure.unableToUpdate() = _UnableToUpdate;
  const factory MovieFailure.insufficientPermissions() =
      _InsufficientPermissions;
}
