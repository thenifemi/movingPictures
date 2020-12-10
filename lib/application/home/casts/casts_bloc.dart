import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/home/shared_classes/cast/cast.dart';
import '../../../domain/home/shared_classes/cast/cast_failure.dart';
import '../../../domain/home/shared_classes/cast/cast_interface.dart';

part 'casts_bloc.freezed.dart';
part 'casts_event.dart';
part 'casts_state.dart';

@injectable
class CastsBloc extends Bloc<CastsEvent, CastsState> {
  final CastInterface castInterface;
  CastsBloc(this.castInterface) : super(const _Initial());

  @override
  Stream<CastsState> mapEventToState(
    CastsEvent event,
  ) async* {
    yield* event.map(getCastCalled: (e) async* {
      yield const CastsState.loading();
      final failureOrPerson = await castInterface.getPerson(e.castId);

      yield failureOrPerson.fold(
        (f) => CastsState.loadFailure(f),
        (person) => CastsState.loadSuccess(person),
      );
    });
  }
}
