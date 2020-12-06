import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre_failure.freezed.dart';

@freezed
abstract class GenreFailure with _$GenreFailure {
  const factory GenreFailure.unexpected() = _Unexpected;
  const factory GenreFailure.noInternetConnection() = _NoInternetConnection;
}
