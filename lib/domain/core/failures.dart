import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  //Auth failures
  const factory ValueFailure.accountAlreadyExists({
    @required T failedValue,
  }) = AccountAlreadyExists<T>;
}
