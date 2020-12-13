part of 'people_bloc.dart';

@freezed
abstract class PeopleState with _$PeopleState {
  const factory PeopleState.initial() = _Initial;
  const factory PeopleState.failure(PeopleFailure peopleFailure) = _Failure;
  const factory PeopleState.followSuccess() = _FollowSuccess;
  const factory PeopleState.unfollowSuccess() = _UnfollowSuccess;
  const factory PeopleState.watchPeopleSuccess(List<Person> people) =
      _WatchPeopleSuccess;
  const factory PeopleState.loadSuccessforSearchQuery(Person person) =
      _LoadSuccessforSearchQuery;
}
