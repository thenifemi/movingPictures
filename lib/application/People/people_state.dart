part of 'people_bloc.dart';

@freezed
abstract class PeopleState with _$PeopleState {
  const factory PeopleState.initial() = _Initial;
  const factory PeopleState.loading() = _Loading;
  const factory PeopleState.failure(PeopleFailure peopleFailure) = _Failure;
  const factory PeopleState.followSuccess() = _FollowSuccess;
  const factory PeopleState.unfollowSuccess() = _UnFollowSuccess;
  const factory PeopleState.watchSuccess(List<Person> people) = _WatchSuccess;
  const factory PeopleState.personSearchSuccess(Person person) =
      _PersonSearchSuccess;
}
