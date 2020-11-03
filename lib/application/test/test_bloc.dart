import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movingPictures/domain/test/test_stream.dart';

part 'test_event.dart';
part 'test_state.dart';
part 'test_bloc.freezed.dart';

@injectable
class TestBloc extends Bloc<TestEvent, TestState> {
  final TestStream _testStream;
  StreamSubscription<String> streamSubscription;
  TestBloc(this._testStream) : super(const _Initial());

  @override
  Stream<TestState> mapEventToState(
    TestEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield const TestState.loading();
        await streamSubscription?.cancel();

        streamSubscription = _testStream.testStream().listen((string) {
          return add(TestEvent.recieved(string));
        });
      },
      recieved: (e) async* {
        yield TestState.success(e.string);
      },
    );
  }

  @override
  Future<void> close() async {
    await streamSubscription?.cancel();
    return super.close();
  }
}
