part of 'test_bloc.dart';

@freezed
abstract class TestState with _$TestState {
  const factory TestState.initial() = _Initial;
  const factory TestState.loading() = _Loading;
  const factory TestState.success(String e) = _Success;
}
