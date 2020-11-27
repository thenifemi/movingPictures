import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast_failure.freezed.dart';

@freezed
abstract class CastFailure with _$CastFailure {
  const factory CastFailure.unexpected() = _Unexpected;
}
