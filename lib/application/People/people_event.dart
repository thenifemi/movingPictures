part of 'people_bloc.dart';

@freezed
abstract class PeopleEvent with _$PeopleEvent {
  const factory PeopleEvent.personFollowed(String personEmail) =
      _PersonFollowed;
  const factory PeopleEvent.personUnFollowed(String personEmail) =
      _PersonUnFollowed;
  const factory PeopleEvent.watchPeople() = _WatchPeople;
  const factory PeopleEvent.peopleReceived(
      Either<PeopleFailure, List<Person>> failureOrPeople) = _PeopleReceived;
  const factory PeopleEvent.personSearchQueryCalled(String personEmail) =
      _PersonSearchQueryCalled;
}
