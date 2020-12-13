import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movingPictures/domain/people/people_interface.dart';

import '../../domain/people/people.dart';
import '../../domain/people/people_failure.dart';

part 'people_bloc.freezed.dart';
part 'people_event.dart';
part 'people_state.dart';

@injectable
class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final PeopleInterface peopleInterface;
  StreamSubscription<Either<PeopleFailure, List<Person>>> peopleStream;

  PeopleBloc(this.peopleInterface) : super(const _Initial());

  @override
  Stream<PeopleState> mapEventToState(
    PeopleEvent event,
  ) async* {
    yield* event.map(
      followed: (e) async* {
        // yield const Peoples
      },
      unfollowed: (e) async* {},
      watchPeople: (e) async* {},
      peopleRecieved: (e) async* {},
      personSearchQuery: (e) async* {},
    );
  }

  @override
  Future<void> close() async {
    await peopleStream?.cancel();
    return super.close();
  }
}
