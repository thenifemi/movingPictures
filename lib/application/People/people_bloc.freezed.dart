// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'people_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PeopleEventTearOff {
  const _$PeopleEventTearOff();

// ignore: unused_element
  _PersonFollowed personFollowed(String personEmail) {
    return _PersonFollowed(
      personEmail,
    );
  }

// ignore: unused_element
  _PersonUnFollowed personUnFollowed(String personEmail) {
    return _PersonUnFollowed(
      personEmail,
    );
  }

// ignore: unused_element
  _WatchPeople watchPeople() {
    return const _WatchPeople();
  }

// ignore: unused_element
  _PeopleReceived peopleReceived(
      Either<PeopleFailure, List<Person>> failureOrPeople) {
    return _PeopleReceived(
      failureOrPeople,
    );
  }

// ignore: unused_element
  _PersonSearchQueryCalled personSearchQueryCalled(String personEmail) {
    return _PersonSearchQueryCalled(
      personEmail,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PeopleEvent = _$PeopleEventTearOff();

/// @nodoc
mixin _$PeopleEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result personFollowed(String personEmail),
    @required Result personUnFollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleReceived(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQueryCalled(String personEmail),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result personFollowed(String personEmail),
    Result personUnFollowed(String personEmail),
    Result watchPeople(),
    Result peopleReceived(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQueryCalled(String personEmail),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result personFollowed(_PersonFollowed value),
    @required Result personUnFollowed(_PersonUnFollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleReceived(_PeopleReceived value),
    @required Result personSearchQueryCalled(_PersonSearchQueryCalled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result personFollowed(_PersonFollowed value),
    Result personUnFollowed(_PersonUnFollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleReceived(_PeopleReceived value),
    Result personSearchQueryCalled(_PersonSearchQueryCalled value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PeopleEventCopyWith<$Res> {
  factory $PeopleEventCopyWith(
          PeopleEvent value, $Res Function(PeopleEvent) then) =
      _$PeopleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PeopleEventCopyWithImpl<$Res> implements $PeopleEventCopyWith<$Res> {
  _$PeopleEventCopyWithImpl(this._value, this._then);

  final PeopleEvent _value;
  // ignore: unused_field
  final $Res Function(PeopleEvent) _then;
}

/// @nodoc
abstract class _$PersonFollowedCopyWith<$Res> {
  factory _$PersonFollowedCopyWith(
          _PersonFollowed value, $Res Function(_PersonFollowed) then) =
      __$PersonFollowedCopyWithImpl<$Res>;
  $Res call({String personEmail});
}

/// @nodoc
class __$PersonFollowedCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res>
    implements _$PersonFollowedCopyWith<$Res> {
  __$PersonFollowedCopyWithImpl(
      _PersonFollowed _value, $Res Function(_PersonFollowed) _then)
      : super(_value, (v) => _then(v as _PersonFollowed));

  @override
  _PersonFollowed get _value => super._value as _PersonFollowed;

  @override
  $Res call({
    Object personEmail = freezed,
  }) {
    return _then(_PersonFollowed(
      personEmail == freezed ? _value.personEmail : personEmail as String,
    ));
  }
}

/// @nodoc
class _$_PersonFollowed implements _PersonFollowed {
  const _$_PersonFollowed(this.personEmail) : assert(personEmail != null);

  @override
  final String personEmail;

  @override
  String toString() {
    return 'PeopleEvent.personFollowed(personEmail: $personEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonFollowed &&
            (identical(other.personEmail, personEmail) ||
                const DeepCollectionEquality()
                    .equals(other.personEmail, personEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(personEmail);

  @override
  _$PersonFollowedCopyWith<_PersonFollowed> get copyWith =>
      __$PersonFollowedCopyWithImpl<_PersonFollowed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result personFollowed(String personEmail),
    @required Result personUnFollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleReceived(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQueryCalled(String personEmail),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return personFollowed(personEmail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result personFollowed(String personEmail),
    Result personUnFollowed(String personEmail),
    Result watchPeople(),
    Result peopleReceived(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQueryCalled(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personFollowed != null) {
      return personFollowed(personEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result personFollowed(_PersonFollowed value),
    @required Result personUnFollowed(_PersonUnFollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleReceived(_PeopleReceived value),
    @required Result personSearchQueryCalled(_PersonSearchQueryCalled value),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return personFollowed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result personFollowed(_PersonFollowed value),
    Result personUnFollowed(_PersonUnFollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleReceived(_PeopleReceived value),
    Result personSearchQueryCalled(_PersonSearchQueryCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personFollowed != null) {
      return personFollowed(this);
    }
    return orElse();
  }
}

abstract class _PersonFollowed implements PeopleEvent {
  const factory _PersonFollowed(String personEmail) = _$_PersonFollowed;

  String get personEmail;
  _$PersonFollowedCopyWith<_PersonFollowed> get copyWith;
}

/// @nodoc
abstract class _$PersonUnFollowedCopyWith<$Res> {
  factory _$PersonUnFollowedCopyWith(
          _PersonUnFollowed value, $Res Function(_PersonUnFollowed) then) =
      __$PersonUnFollowedCopyWithImpl<$Res>;
  $Res call({String personEmail});
}

/// @nodoc
class __$PersonUnFollowedCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res>
    implements _$PersonUnFollowedCopyWith<$Res> {
  __$PersonUnFollowedCopyWithImpl(
      _PersonUnFollowed _value, $Res Function(_PersonUnFollowed) _then)
      : super(_value, (v) => _then(v as _PersonUnFollowed));

  @override
  _PersonUnFollowed get _value => super._value as _PersonUnFollowed;

  @override
  $Res call({
    Object personEmail = freezed,
  }) {
    return _then(_PersonUnFollowed(
      personEmail == freezed ? _value.personEmail : personEmail as String,
    ));
  }
}

/// @nodoc
class _$_PersonUnFollowed implements _PersonUnFollowed {
  const _$_PersonUnFollowed(this.personEmail) : assert(personEmail != null);

  @override
  final String personEmail;

  @override
  String toString() {
    return 'PeopleEvent.personUnFollowed(personEmail: $personEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonUnFollowed &&
            (identical(other.personEmail, personEmail) ||
                const DeepCollectionEquality()
                    .equals(other.personEmail, personEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(personEmail);

  @override
  _$PersonUnFollowedCopyWith<_PersonUnFollowed> get copyWith =>
      __$PersonUnFollowedCopyWithImpl<_PersonUnFollowed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result personFollowed(String personEmail),
    @required Result personUnFollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleReceived(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQueryCalled(String personEmail),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return personUnFollowed(personEmail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result personFollowed(String personEmail),
    Result personUnFollowed(String personEmail),
    Result watchPeople(),
    Result peopleReceived(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQueryCalled(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personUnFollowed != null) {
      return personUnFollowed(personEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result personFollowed(_PersonFollowed value),
    @required Result personUnFollowed(_PersonUnFollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleReceived(_PeopleReceived value),
    @required Result personSearchQueryCalled(_PersonSearchQueryCalled value),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return personUnFollowed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result personFollowed(_PersonFollowed value),
    Result personUnFollowed(_PersonUnFollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleReceived(_PeopleReceived value),
    Result personSearchQueryCalled(_PersonSearchQueryCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personUnFollowed != null) {
      return personUnFollowed(this);
    }
    return orElse();
  }
}

abstract class _PersonUnFollowed implements PeopleEvent {
  const factory _PersonUnFollowed(String personEmail) = _$_PersonUnFollowed;

  String get personEmail;
  _$PersonUnFollowedCopyWith<_PersonUnFollowed> get copyWith;
}

/// @nodoc
abstract class _$WatchPeopleCopyWith<$Res> {
  factory _$WatchPeopleCopyWith(
          _WatchPeople value, $Res Function(_WatchPeople) then) =
      __$WatchPeopleCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchPeopleCopyWithImpl<$Res> extends _$PeopleEventCopyWithImpl<$Res>
    implements _$WatchPeopleCopyWith<$Res> {
  __$WatchPeopleCopyWithImpl(
      _WatchPeople _value, $Res Function(_WatchPeople) _then)
      : super(_value, (v) => _then(v as _WatchPeople));

  @override
  _WatchPeople get _value => super._value as _WatchPeople;
}

/// @nodoc
class _$_WatchPeople implements _WatchPeople {
  const _$_WatchPeople();

  @override
  String toString() {
    return 'PeopleEvent.watchPeople()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchPeople);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result personFollowed(String personEmail),
    @required Result personUnFollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleReceived(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQueryCalled(String personEmail),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return watchPeople();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result personFollowed(String personEmail),
    Result personUnFollowed(String personEmail),
    Result watchPeople(),
    Result peopleReceived(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQueryCalled(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchPeople != null) {
      return watchPeople();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result personFollowed(_PersonFollowed value),
    @required Result personUnFollowed(_PersonUnFollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleReceived(_PeopleReceived value),
    @required Result personSearchQueryCalled(_PersonSearchQueryCalled value),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return watchPeople(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result personFollowed(_PersonFollowed value),
    Result personUnFollowed(_PersonUnFollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleReceived(_PeopleReceived value),
    Result personSearchQueryCalled(_PersonSearchQueryCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchPeople != null) {
      return watchPeople(this);
    }
    return orElse();
  }
}

abstract class _WatchPeople implements PeopleEvent {
  const factory _WatchPeople() = _$_WatchPeople;
}

/// @nodoc
abstract class _$PeopleReceivedCopyWith<$Res> {
  factory _$PeopleReceivedCopyWith(
          _PeopleReceived value, $Res Function(_PeopleReceived) then) =
      __$PeopleReceivedCopyWithImpl<$Res>;
  $Res call({Either<PeopleFailure, List<Person>> failureOrPeople});
}

/// @nodoc
class __$PeopleReceivedCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res>
    implements _$PeopleReceivedCopyWith<$Res> {
  __$PeopleReceivedCopyWithImpl(
      _PeopleReceived _value, $Res Function(_PeopleReceived) _then)
      : super(_value, (v) => _then(v as _PeopleReceived));

  @override
  _PeopleReceived get _value => super._value as _PeopleReceived;

  @override
  $Res call({
    Object failureOrPeople = freezed,
  }) {
    return _then(_PeopleReceived(
      failureOrPeople == freezed
          ? _value.failureOrPeople
          : failureOrPeople as Either<PeopleFailure, List<Person>>,
    ));
  }
}

/// @nodoc
class _$_PeopleReceived implements _PeopleReceived {
  const _$_PeopleReceived(this.failureOrPeople)
      : assert(failureOrPeople != null);

  @override
  final Either<PeopleFailure, List<Person>> failureOrPeople;

  @override
  String toString() {
    return 'PeopleEvent.peopleReceived(failureOrPeople: $failureOrPeople)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PeopleReceived &&
            (identical(other.failureOrPeople, failureOrPeople) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPeople, failureOrPeople)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPeople);

  @override
  _$PeopleReceivedCopyWith<_PeopleReceived> get copyWith =>
      __$PeopleReceivedCopyWithImpl<_PeopleReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result personFollowed(String personEmail),
    @required Result personUnFollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleReceived(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQueryCalled(String personEmail),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return peopleReceived(failureOrPeople);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result personFollowed(String personEmail),
    Result personUnFollowed(String personEmail),
    Result watchPeople(),
    Result peopleReceived(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQueryCalled(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (peopleReceived != null) {
      return peopleReceived(failureOrPeople);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result personFollowed(_PersonFollowed value),
    @required Result personUnFollowed(_PersonUnFollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleReceived(_PeopleReceived value),
    @required Result personSearchQueryCalled(_PersonSearchQueryCalled value),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return peopleReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result personFollowed(_PersonFollowed value),
    Result personUnFollowed(_PersonUnFollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleReceived(_PeopleReceived value),
    Result personSearchQueryCalled(_PersonSearchQueryCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (peopleReceived != null) {
      return peopleReceived(this);
    }
    return orElse();
  }
}

abstract class _PeopleReceived implements PeopleEvent {
  const factory _PeopleReceived(
      Either<PeopleFailure, List<Person>> failureOrPeople) = _$_PeopleReceived;

  Either<PeopleFailure, List<Person>> get failureOrPeople;
  _$PeopleReceivedCopyWith<_PeopleReceived> get copyWith;
}

/// @nodoc
abstract class _$PersonSearchQueryCalledCopyWith<$Res> {
  factory _$PersonSearchQueryCalledCopyWith(_PersonSearchQueryCalled value,
          $Res Function(_PersonSearchQueryCalled) then) =
      __$PersonSearchQueryCalledCopyWithImpl<$Res>;
  $Res call({String personEmail});
}

/// @nodoc
class __$PersonSearchQueryCalledCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res>
    implements _$PersonSearchQueryCalledCopyWith<$Res> {
  __$PersonSearchQueryCalledCopyWithImpl(_PersonSearchQueryCalled _value,
      $Res Function(_PersonSearchQueryCalled) _then)
      : super(_value, (v) => _then(v as _PersonSearchQueryCalled));

  @override
  _PersonSearchQueryCalled get _value =>
      super._value as _PersonSearchQueryCalled;

  @override
  $Res call({
    Object personEmail = freezed,
  }) {
    return _then(_PersonSearchQueryCalled(
      personEmail == freezed ? _value.personEmail : personEmail as String,
    ));
  }
}

/// @nodoc
class _$_PersonSearchQueryCalled implements _PersonSearchQueryCalled {
  const _$_PersonSearchQueryCalled(this.personEmail)
      : assert(personEmail != null);

  @override
  final String personEmail;

  @override
  String toString() {
    return 'PeopleEvent.personSearchQueryCalled(personEmail: $personEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonSearchQueryCalled &&
            (identical(other.personEmail, personEmail) ||
                const DeepCollectionEquality()
                    .equals(other.personEmail, personEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(personEmail);

  @override
  _$PersonSearchQueryCalledCopyWith<_PersonSearchQueryCalled> get copyWith =>
      __$PersonSearchQueryCalledCopyWithImpl<_PersonSearchQueryCalled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result personFollowed(String personEmail),
    @required Result personUnFollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleReceived(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQueryCalled(String personEmail),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return personSearchQueryCalled(personEmail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result personFollowed(String personEmail),
    Result personUnFollowed(String personEmail),
    Result watchPeople(),
    Result peopleReceived(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQueryCalled(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personSearchQueryCalled != null) {
      return personSearchQueryCalled(personEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result personFollowed(_PersonFollowed value),
    @required Result personUnFollowed(_PersonUnFollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleReceived(_PeopleReceived value),
    @required Result personSearchQueryCalled(_PersonSearchQueryCalled value),
  }) {
    assert(personFollowed != null);
    assert(personUnFollowed != null);
    assert(watchPeople != null);
    assert(peopleReceived != null);
    assert(personSearchQueryCalled != null);
    return personSearchQueryCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result personFollowed(_PersonFollowed value),
    Result personUnFollowed(_PersonUnFollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleReceived(_PeopleReceived value),
    Result personSearchQueryCalled(_PersonSearchQueryCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personSearchQueryCalled != null) {
      return personSearchQueryCalled(this);
    }
    return orElse();
  }
}

abstract class _PersonSearchQueryCalled implements PeopleEvent {
  const factory _PersonSearchQueryCalled(String personEmail) =
      _$_PersonSearchQueryCalled;

  String get personEmail;
  _$PersonSearchQueryCalledCopyWith<_PersonSearchQueryCalled> get copyWith;
}

/// @nodoc
class _$PeopleStateTearOff {
  const _$PeopleStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Failure failure(PeopleFailure peopleFailure) {
    return _Failure(
      peopleFailure,
    );
  }

// ignore: unused_element
  _FollowSuccess followSuccess() {
    return const _FollowSuccess();
  }

// ignore: unused_element
  _UnFollowSuccess unfollowSuccess() {
    return const _UnFollowSuccess();
  }

// ignore: unused_element
  _WatchSuccess watchSuccess(List<Person> people) {
    return _WatchSuccess(
      people,
    );
  }

// ignore: unused_element
  _PersonSearchSuccess personSearchSuccess(Person person) {
    return _PersonSearchSuccess(
      person,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PeopleState = _$PeopleStateTearOff();

/// @nodoc
mixin _$PeopleState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchSuccess(List<Person> people),
    @required Result personSearchSuccess(Person person),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchSuccess(List<Person> people),
    Result personSearchSuccess(Person person),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result unfollowSuccess(_UnFollowSuccess value),
    @required Result watchSuccess(_WatchSuccess value),
    @required Result personSearchSuccess(_PersonSearchSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnFollowSuccess value),
    Result watchSuccess(_WatchSuccess value),
    Result personSearchSuccess(_PersonSearchSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $PeopleStateCopyWith<$Res> {
  factory $PeopleStateCopyWith(
          PeopleState value, $Res Function(PeopleState) then) =
      _$PeopleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PeopleStateCopyWithImpl<$Res> implements $PeopleStateCopyWith<$Res> {
  _$PeopleStateCopyWithImpl(this._value, this._then);

  final PeopleState _value;
  // ignore: unused_field
  final $Res Function(PeopleState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$PeopleStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PeopleState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchSuccess(List<Person> people),
    @required Result personSearchSuccess(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchSuccess(List<Person> people),
    Result personSearchSuccess(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result unfollowSuccess(_UnFollowSuccess value),
    @required Result watchSuccess(_WatchSuccess value),
    @required Result personSearchSuccess(_PersonSearchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnFollowSuccess value),
    Result watchSuccess(_WatchSuccess value),
    Result personSearchSuccess(_PersonSearchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PeopleState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$PeopleStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'PeopleState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchSuccess(List<Person> people),
    @required Result personSearchSuccess(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchSuccess(List<Person> people),
    Result personSearchSuccess(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result unfollowSuccess(_UnFollowSuccess value),
    @required Result watchSuccess(_WatchSuccess value),
    @required Result personSearchSuccess(_PersonSearchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnFollowSuccess value),
    Result watchSuccess(_WatchSuccess value),
    Result personSearchSuccess(_PersonSearchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PeopleState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({PeopleFailure peopleFailure});

  $PeopleFailureCopyWith<$Res> get peopleFailure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$PeopleStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object peopleFailure = freezed,
  }) {
    return _then(_Failure(
      peopleFailure == freezed
          ? _value.peopleFailure
          : peopleFailure as PeopleFailure,
    ));
  }

  @override
  $PeopleFailureCopyWith<$Res> get peopleFailure {
    if (_value.peopleFailure == null) {
      return null;
    }
    return $PeopleFailureCopyWith<$Res>(_value.peopleFailure, (value) {
      return _then(_value.copyWith(peopleFailure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.peopleFailure) : assert(peopleFailure != null);

  @override
  final PeopleFailure peopleFailure;

  @override
  String toString() {
    return 'PeopleState.failure(peopleFailure: $peopleFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.peopleFailure, peopleFailure) ||
                const DeepCollectionEquality()
                    .equals(other.peopleFailure, peopleFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(peopleFailure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchSuccess(List<Person> people),
    @required Result personSearchSuccess(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return failure(peopleFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchSuccess(List<Person> people),
    Result personSearchSuccess(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(peopleFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result unfollowSuccess(_UnFollowSuccess value),
    @required Result watchSuccess(_WatchSuccess value),
    @required Result personSearchSuccess(_PersonSearchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnFollowSuccess value),
    Result watchSuccess(_WatchSuccess value),
    Result personSearchSuccess(_PersonSearchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements PeopleState {
  const factory _Failure(PeopleFailure peopleFailure) = _$_Failure;

  PeopleFailure get peopleFailure;
  _$FailureCopyWith<_Failure> get copyWith;
}

/// @nodoc
abstract class _$FollowSuccessCopyWith<$Res> {
  factory _$FollowSuccessCopyWith(
          _FollowSuccess value, $Res Function(_FollowSuccess) then) =
      __$FollowSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$FollowSuccessCopyWithImpl<$Res> extends _$PeopleStateCopyWithImpl<$Res>
    implements _$FollowSuccessCopyWith<$Res> {
  __$FollowSuccessCopyWithImpl(
      _FollowSuccess _value, $Res Function(_FollowSuccess) _then)
      : super(_value, (v) => _then(v as _FollowSuccess));

  @override
  _FollowSuccess get _value => super._value as _FollowSuccess;
}

/// @nodoc
class _$_FollowSuccess implements _FollowSuccess {
  const _$_FollowSuccess();

  @override
  String toString() {
    return 'PeopleState.followSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FollowSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchSuccess(List<Person> people),
    @required Result personSearchSuccess(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return followSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchSuccess(List<Person> people),
    Result personSearchSuccess(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followSuccess != null) {
      return followSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result unfollowSuccess(_UnFollowSuccess value),
    @required Result watchSuccess(_WatchSuccess value),
    @required Result personSearchSuccess(_PersonSearchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return followSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnFollowSuccess value),
    Result watchSuccess(_WatchSuccess value),
    Result personSearchSuccess(_PersonSearchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followSuccess != null) {
      return followSuccess(this);
    }
    return orElse();
  }
}

abstract class _FollowSuccess implements PeopleState {
  const factory _FollowSuccess() = _$_FollowSuccess;
}

/// @nodoc
abstract class _$UnFollowSuccessCopyWith<$Res> {
  factory _$UnFollowSuccessCopyWith(
          _UnFollowSuccess value, $Res Function(_UnFollowSuccess) then) =
      __$UnFollowSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnFollowSuccessCopyWithImpl<$Res>
    extends _$PeopleStateCopyWithImpl<$Res>
    implements _$UnFollowSuccessCopyWith<$Res> {
  __$UnFollowSuccessCopyWithImpl(
      _UnFollowSuccess _value, $Res Function(_UnFollowSuccess) _then)
      : super(_value, (v) => _then(v as _UnFollowSuccess));

  @override
  _UnFollowSuccess get _value => super._value as _UnFollowSuccess;
}

/// @nodoc
class _$_UnFollowSuccess implements _UnFollowSuccess {
  const _$_UnFollowSuccess();

  @override
  String toString() {
    return 'PeopleState.unfollowSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnFollowSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchSuccess(List<Person> people),
    @required Result personSearchSuccess(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return unfollowSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchSuccess(List<Person> people),
    Result personSearchSuccess(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unfollowSuccess != null) {
      return unfollowSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result unfollowSuccess(_UnFollowSuccess value),
    @required Result watchSuccess(_WatchSuccess value),
    @required Result personSearchSuccess(_PersonSearchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return unfollowSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnFollowSuccess value),
    Result watchSuccess(_WatchSuccess value),
    Result personSearchSuccess(_PersonSearchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unfollowSuccess != null) {
      return unfollowSuccess(this);
    }
    return orElse();
  }
}

abstract class _UnFollowSuccess implements PeopleState {
  const factory _UnFollowSuccess() = _$_UnFollowSuccess;
}

/// @nodoc
abstract class _$WatchSuccessCopyWith<$Res> {
  factory _$WatchSuccessCopyWith(
          _WatchSuccess value, $Res Function(_WatchSuccess) then) =
      __$WatchSuccessCopyWithImpl<$Res>;
  $Res call({List<Person> people});
}

/// @nodoc
class __$WatchSuccessCopyWithImpl<$Res> extends _$PeopleStateCopyWithImpl<$Res>
    implements _$WatchSuccessCopyWith<$Res> {
  __$WatchSuccessCopyWithImpl(
      _WatchSuccess _value, $Res Function(_WatchSuccess) _then)
      : super(_value, (v) => _then(v as _WatchSuccess));

  @override
  _WatchSuccess get _value => super._value as _WatchSuccess;

  @override
  $Res call({
    Object people = freezed,
  }) {
    return _then(_WatchSuccess(
      people == freezed ? _value.people : people as List<Person>,
    ));
  }
}

/// @nodoc
class _$_WatchSuccess implements _WatchSuccess {
  const _$_WatchSuccess(this.people) : assert(people != null);

  @override
  final List<Person> people;

  @override
  String toString() {
    return 'PeopleState.watchSuccess(people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchSuccess &&
            (identical(other.people, people) ||
                const DeepCollectionEquality().equals(other.people, people)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(people);

  @override
  _$WatchSuccessCopyWith<_WatchSuccess> get copyWith =>
      __$WatchSuccessCopyWithImpl<_WatchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchSuccess(List<Person> people),
    @required Result personSearchSuccess(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return watchSuccess(people);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchSuccess(List<Person> people),
    Result personSearchSuccess(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSuccess != null) {
      return watchSuccess(people);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result unfollowSuccess(_UnFollowSuccess value),
    @required Result watchSuccess(_WatchSuccess value),
    @required Result personSearchSuccess(_PersonSearchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return watchSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnFollowSuccess value),
    Result watchSuccess(_WatchSuccess value),
    Result personSearchSuccess(_PersonSearchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSuccess != null) {
      return watchSuccess(this);
    }
    return orElse();
  }
}

abstract class _WatchSuccess implements PeopleState {
  const factory _WatchSuccess(List<Person> people) = _$_WatchSuccess;

  List<Person> get people;
  _$WatchSuccessCopyWith<_WatchSuccess> get copyWith;
}

/// @nodoc
abstract class _$PersonSearchSuccessCopyWith<$Res> {
  factory _$PersonSearchSuccessCopyWith(_PersonSearchSuccess value,
          $Res Function(_PersonSearchSuccess) then) =
      __$PersonSearchSuccessCopyWithImpl<$Res>;
  $Res call({Person person});
}

/// @nodoc
class __$PersonSearchSuccessCopyWithImpl<$Res>
    extends _$PeopleStateCopyWithImpl<$Res>
    implements _$PersonSearchSuccessCopyWith<$Res> {
  __$PersonSearchSuccessCopyWithImpl(
      _PersonSearchSuccess _value, $Res Function(_PersonSearchSuccess) _then)
      : super(_value, (v) => _then(v as _PersonSearchSuccess));

  @override
  _PersonSearchSuccess get _value => super._value as _PersonSearchSuccess;

  @override
  $Res call({
    Object person = freezed,
  }) {
    return _then(_PersonSearchSuccess(
      person == freezed ? _value.person : person as Person,
    ));
  }
}

/// @nodoc
class _$_PersonSearchSuccess implements _PersonSearchSuccess {
  const _$_PersonSearchSuccess(this.person) : assert(person != null);

  @override
  final Person person;

  @override
  String toString() {
    return 'PeopleState.personSearchSuccess(person: $person)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonSearchSuccess &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(person);

  @override
  _$PersonSearchSuccessCopyWith<_PersonSearchSuccess> get copyWith =>
      __$PersonSearchSuccessCopyWithImpl<_PersonSearchSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchSuccess(List<Person> people),
    @required Result personSearchSuccess(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return personSearchSuccess(person);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchSuccess(List<Person> people),
    Result personSearchSuccess(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personSearchSuccess != null) {
      return personSearchSuccess(person);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result unfollowSuccess(_UnFollowSuccess value),
    @required Result watchSuccess(_WatchSuccess value),
    @required Result personSearchSuccess(_PersonSearchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchSuccess != null);
    assert(personSearchSuccess != null);
    return personSearchSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnFollowSuccess value),
    Result watchSuccess(_WatchSuccess value),
    Result personSearchSuccess(_PersonSearchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personSearchSuccess != null) {
      return personSearchSuccess(this);
    }
    return orElse();
  }
}

abstract class _PersonSearchSuccess implements PeopleState {
  const factory _PersonSearchSuccess(Person person) = _$_PersonSearchSuccess;

  Person get person;
  _$PersonSearchSuccessCopyWith<_PersonSearchSuccess> get copyWith;
}
