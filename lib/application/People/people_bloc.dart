import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/people/people.dart';
import '../../domain/people/people_failure.dart';
import '../../domain/people/people_interface.dart';

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
        yield const PeopleState.loading();
        final failureOrSuccess =
            await peopleInterface.followPerson(e.personEmail);

        yield failureOrSuccess.fold(
          (f) => PeopleState.failure(f),
          (_) => const PeopleState.followSuccess(),
        );
      },
      unfollowed: (e) async* {
        yield const PeopleState.loading();
        final failureOrSuccess =
            await peopleInterface.unFollowPerson(e.personEmail);

        yield failureOrSuccess.fold(
          (f) => PeopleState.failure(f),
          (_) => const PeopleState.unfollowSuccess(),
        );
      },

      //? STREAM
      watchPeople: (e) async* {
        yield const PeopleState.loading();
        await peopleStream?.cancel();

        peopleStream = peopleInterface.watchPeople().listen(
              (failureOrPeople) => add(
                PeopleEvent.peopleRecieved(failureOrPeople),
              ),
            );
      },
      peopleRecieved: (e) async* {
        yield e.failureOrPeople.fold(
          (f) => PeopleState.failure(f),
          (people) => PeopleState.watchPeopleSuccess(people),
        );
      },

      //* SEARCH FOR PEOPLE
      personSearchQuery: (e) async* {
        yield const PeopleState.loading();
        final failureOrSuccess =
            await peopleInterface.getPersonSearchQuery(e.personEmail);

        yield failureOrSuccess.fold(
          (f) => PeopleState.failure(f),
          (person) => PeopleState.loadSuccessforSearchQuery(person),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await peopleStream?.cancel();
    return super.close();
  }
}
