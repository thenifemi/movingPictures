part of 'test_bloc.dart';

@freezed
abstract class TestEvent with _$TestEvent {
  const factory TestEvent.started() = _Started;
  const factory TestEvent.recieved(String string) = _Recieved;
}
