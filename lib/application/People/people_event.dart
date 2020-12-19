part of 'people_bloc.dart';

@freezed
abstract class PeopleEvent with _$PeopleEvent {
  const factory PeopleEvent.followed(String personEmail) = _Followed;
  const factory PeopleEvent.unfollowed(String personEmail) = _Unfollowed;
  const factory PeopleEvent.watchPeople() = _WatchPeople;
  const factory PeopleEvent.peopleRecieved(
      Either<PeopleFailure, List<Person>> failureOrPeople) = _PeopleRecieved;
  const factory PeopleEvent.watchFullPeople(String personEmail) =
      _WatchFullPeople;
  const factory PeopleEvent.fullPeopleRecieved(
          Either<PeopleFailure, List<Person>> failureOrPeople) =
      _FullPeopleRecieved;
  const factory PeopleEvent.personSearchQuery(String personEmail) =
      _PersonSearchQuery;
}
