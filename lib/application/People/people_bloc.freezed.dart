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
  _Followed followed(String personEmail) {
    return _Followed(
      personEmail,
    );
  }

// ignore: unused_element
  _Unfollowed unfollowed(String personEmail) {
    return _Unfollowed(
      personEmail,
    );
  }

// ignore: unused_element
  _WatchPeople watchPeople() {
    return const _WatchPeople();
  }

// ignore: unused_element
  _PeopleRecieved peopleRecieved(
      Either<PeopleFailure, List<Person>> failureOrPeople) {
    return _PeopleRecieved(
      failureOrPeople,
    );
  }

// ignore: unused_element
  _WatchFullPeople watchFullPeople(String personEmail) {
    return _WatchFullPeople(
      personEmail,
    );
  }

// ignore: unused_element
  _FullPeopleRecieved fullPeopleRecieved(
      Either<PeopleFailure, List<Person>> failureOrPeople) {
    return _FullPeopleRecieved(
      failureOrPeople,
    );
  }

// ignore: unused_element
  _PersonSearchQuery personSearchQuery(String personEmail) {
    return _PersonSearchQuery(
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
    @required Result followed(String personEmail),
    @required Result unfollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result watchFullPeople(String personEmail),
    @required
        Result fullPeopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQuery(String personEmail),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result followed(String personEmail),
    Result unfollowed(String personEmail),
    Result watchPeople(),
    Result peopleRecieved(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result watchFullPeople(String personEmail),
    Result fullPeopleRecieved(
        Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQuery(String personEmail),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result followed(_Followed value),
    @required Result unfollowed(_Unfollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleRecieved(_PeopleRecieved value),
    @required Result watchFullPeople(_WatchFullPeople value),
    @required Result fullPeopleRecieved(_FullPeopleRecieved value),
    @required Result personSearchQuery(_PersonSearchQuery value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result followed(_Followed value),
    Result unfollowed(_Unfollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleRecieved(_PeopleRecieved value),
    Result watchFullPeople(_WatchFullPeople value),
    Result fullPeopleRecieved(_FullPeopleRecieved value),
    Result personSearchQuery(_PersonSearchQuery value),
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
abstract class _$FollowedCopyWith<$Res> {
  factory _$FollowedCopyWith(_Followed value, $Res Function(_Followed) then) =
      __$FollowedCopyWithImpl<$Res>;
  $Res call({String personEmail});
}

/// @nodoc
class __$FollowedCopyWithImpl<$Res> extends _$PeopleEventCopyWithImpl<$Res>
    implements _$FollowedCopyWith<$Res> {
  __$FollowedCopyWithImpl(_Followed _value, $Res Function(_Followed) _then)
      : super(_value, (v) => _then(v as _Followed));

  @override
  _Followed get _value => super._value as _Followed;

  @override
  $Res call({
    Object personEmail = freezed,
  }) {
    return _then(_Followed(
      personEmail == freezed ? _value.personEmail : personEmail as String,
    ));
  }
}

/// @nodoc
class _$_Followed implements _Followed {
  const _$_Followed(this.personEmail) : assert(personEmail != null);

  @override
  final String personEmail;

  @override
  String toString() {
    return 'PeopleEvent.followed(personEmail: $personEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Followed &&
            (identical(other.personEmail, personEmail) ||
                const DeepCollectionEquality()
                    .equals(other.personEmail, personEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(personEmail);

  @override
  _$FollowedCopyWith<_Followed> get copyWith =>
      __$FollowedCopyWithImpl<_Followed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result followed(String personEmail),
    @required Result unfollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result watchFullPeople(String personEmail),
    @required
        Result fullPeopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQuery(String personEmail),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return followed(personEmail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result followed(String personEmail),
    Result unfollowed(String personEmail),
    Result watchPeople(),
    Result peopleRecieved(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result watchFullPeople(String personEmail),
    Result fullPeopleRecieved(
        Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQuery(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followed != null) {
      return followed(personEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result followed(_Followed value),
    @required Result unfollowed(_Unfollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleRecieved(_PeopleRecieved value),
    @required Result watchFullPeople(_WatchFullPeople value),
    @required Result fullPeopleRecieved(_FullPeopleRecieved value),
    @required Result personSearchQuery(_PersonSearchQuery value),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return followed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result followed(_Followed value),
    Result unfollowed(_Unfollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleRecieved(_PeopleRecieved value),
    Result watchFullPeople(_WatchFullPeople value),
    Result fullPeopleRecieved(_FullPeopleRecieved value),
    Result personSearchQuery(_PersonSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (followed != null) {
      return followed(this);
    }
    return orElse();
  }
}

abstract class _Followed implements PeopleEvent {
  const factory _Followed(String personEmail) = _$_Followed;

  String get personEmail;
  _$FollowedCopyWith<_Followed> get copyWith;
}

/// @nodoc
abstract class _$UnfollowedCopyWith<$Res> {
  factory _$UnfollowedCopyWith(
          _Unfollowed value, $Res Function(_Unfollowed) then) =
      __$UnfollowedCopyWithImpl<$Res>;
  $Res call({String personEmail});
}

/// @nodoc
class __$UnfollowedCopyWithImpl<$Res> extends _$PeopleEventCopyWithImpl<$Res>
    implements _$UnfollowedCopyWith<$Res> {
  __$UnfollowedCopyWithImpl(
      _Unfollowed _value, $Res Function(_Unfollowed) _then)
      : super(_value, (v) => _then(v as _Unfollowed));

  @override
  _Unfollowed get _value => super._value as _Unfollowed;

  @override
  $Res call({
    Object personEmail = freezed,
  }) {
    return _then(_Unfollowed(
      personEmail == freezed ? _value.personEmail : personEmail as String,
    ));
  }
}

/// @nodoc
class _$_Unfollowed implements _Unfollowed {
  const _$_Unfollowed(this.personEmail) : assert(personEmail != null);

  @override
  final String personEmail;

  @override
  String toString() {
    return 'PeopleEvent.unfollowed(personEmail: $personEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Unfollowed &&
            (identical(other.personEmail, personEmail) ||
                const DeepCollectionEquality()
                    .equals(other.personEmail, personEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(personEmail);

  @override
  _$UnfollowedCopyWith<_Unfollowed> get copyWith =>
      __$UnfollowedCopyWithImpl<_Unfollowed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result followed(String personEmail),
    @required Result unfollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result watchFullPeople(String personEmail),
    @required
        Result fullPeopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQuery(String personEmail),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return unfollowed(personEmail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result followed(String personEmail),
    Result unfollowed(String personEmail),
    Result watchPeople(),
    Result peopleRecieved(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result watchFullPeople(String personEmail),
    Result fullPeopleRecieved(
        Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQuery(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unfollowed != null) {
      return unfollowed(personEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result followed(_Followed value),
    @required Result unfollowed(_Unfollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleRecieved(_PeopleRecieved value),
    @required Result watchFullPeople(_WatchFullPeople value),
    @required Result fullPeopleRecieved(_FullPeopleRecieved value),
    @required Result personSearchQuery(_PersonSearchQuery value),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return unfollowed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result followed(_Followed value),
    Result unfollowed(_Unfollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleRecieved(_PeopleRecieved value),
    Result watchFullPeople(_WatchFullPeople value),
    Result fullPeopleRecieved(_FullPeopleRecieved value),
    Result personSearchQuery(_PersonSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unfollowed != null) {
      return unfollowed(this);
    }
    return orElse();
  }
}

abstract class _Unfollowed implements PeopleEvent {
  const factory _Unfollowed(String personEmail) = _$_Unfollowed;

  String get personEmail;
  _$UnfollowedCopyWith<_Unfollowed> get copyWith;
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
    @required Result followed(String personEmail),
    @required Result unfollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result watchFullPeople(String personEmail),
    @required
        Result fullPeopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQuery(String personEmail),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return watchPeople();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result followed(String personEmail),
    Result unfollowed(String personEmail),
    Result watchPeople(),
    Result peopleRecieved(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result watchFullPeople(String personEmail),
    Result fullPeopleRecieved(
        Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQuery(String personEmail),
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
    @required Result followed(_Followed value),
    @required Result unfollowed(_Unfollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleRecieved(_PeopleRecieved value),
    @required Result watchFullPeople(_WatchFullPeople value),
    @required Result fullPeopleRecieved(_FullPeopleRecieved value),
    @required Result personSearchQuery(_PersonSearchQuery value),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return watchPeople(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result followed(_Followed value),
    Result unfollowed(_Unfollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleRecieved(_PeopleRecieved value),
    Result watchFullPeople(_WatchFullPeople value),
    Result fullPeopleRecieved(_FullPeopleRecieved value),
    Result personSearchQuery(_PersonSearchQuery value),
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
abstract class _$PeopleRecievedCopyWith<$Res> {
  factory _$PeopleRecievedCopyWith(
          _PeopleRecieved value, $Res Function(_PeopleRecieved) then) =
      __$PeopleRecievedCopyWithImpl<$Res>;
  $Res call({Either<PeopleFailure, List<Person>> failureOrPeople});
}

/// @nodoc
class __$PeopleRecievedCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res>
    implements _$PeopleRecievedCopyWith<$Res> {
  __$PeopleRecievedCopyWithImpl(
      _PeopleRecieved _value, $Res Function(_PeopleRecieved) _then)
      : super(_value, (v) => _then(v as _PeopleRecieved));

  @override
  _PeopleRecieved get _value => super._value as _PeopleRecieved;

  @override
  $Res call({
    Object failureOrPeople = freezed,
  }) {
    return _then(_PeopleRecieved(
      failureOrPeople == freezed
          ? _value.failureOrPeople
          : failureOrPeople as Either<PeopleFailure, List<Person>>,
    ));
  }
}

/// @nodoc
class _$_PeopleRecieved implements _PeopleRecieved {
  const _$_PeopleRecieved(this.failureOrPeople)
      : assert(failureOrPeople != null);

  @override
  final Either<PeopleFailure, List<Person>> failureOrPeople;

  @override
  String toString() {
    return 'PeopleEvent.peopleRecieved(failureOrPeople: $failureOrPeople)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PeopleRecieved &&
            (identical(other.failureOrPeople, failureOrPeople) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPeople, failureOrPeople)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPeople);

  @override
  _$PeopleRecievedCopyWith<_PeopleRecieved> get copyWith =>
      __$PeopleRecievedCopyWithImpl<_PeopleRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result followed(String personEmail),
    @required Result unfollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result watchFullPeople(String personEmail),
    @required
        Result fullPeopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQuery(String personEmail),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return peopleRecieved(failureOrPeople);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result followed(String personEmail),
    Result unfollowed(String personEmail),
    Result watchPeople(),
    Result peopleRecieved(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result watchFullPeople(String personEmail),
    Result fullPeopleRecieved(
        Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQuery(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (peopleRecieved != null) {
      return peopleRecieved(failureOrPeople);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result followed(_Followed value),
    @required Result unfollowed(_Unfollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleRecieved(_PeopleRecieved value),
    @required Result watchFullPeople(_WatchFullPeople value),
    @required Result fullPeopleRecieved(_FullPeopleRecieved value),
    @required Result personSearchQuery(_PersonSearchQuery value),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return peopleRecieved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result followed(_Followed value),
    Result unfollowed(_Unfollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleRecieved(_PeopleRecieved value),
    Result watchFullPeople(_WatchFullPeople value),
    Result fullPeopleRecieved(_FullPeopleRecieved value),
    Result personSearchQuery(_PersonSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (peopleRecieved != null) {
      return peopleRecieved(this);
    }
    return orElse();
  }
}

abstract class _PeopleRecieved implements PeopleEvent {
  const factory _PeopleRecieved(
      Either<PeopleFailure, List<Person>> failureOrPeople) = _$_PeopleRecieved;

  Either<PeopleFailure, List<Person>> get failureOrPeople;
  _$PeopleRecievedCopyWith<_PeopleRecieved> get copyWith;
}

/// @nodoc
abstract class _$WatchFullPeopleCopyWith<$Res> {
  factory _$WatchFullPeopleCopyWith(
          _WatchFullPeople value, $Res Function(_WatchFullPeople) then) =
      __$WatchFullPeopleCopyWithImpl<$Res>;
  $Res call({String personEmail});
}

/// @nodoc
class __$WatchFullPeopleCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res>
    implements _$WatchFullPeopleCopyWith<$Res> {
  __$WatchFullPeopleCopyWithImpl(
      _WatchFullPeople _value, $Res Function(_WatchFullPeople) _then)
      : super(_value, (v) => _then(v as _WatchFullPeople));

  @override
  _WatchFullPeople get _value => super._value as _WatchFullPeople;

  @override
  $Res call({
    Object personEmail = freezed,
  }) {
    return _then(_WatchFullPeople(
      personEmail == freezed ? _value.personEmail : personEmail as String,
    ));
  }
}

/// @nodoc
class _$_WatchFullPeople implements _WatchFullPeople {
  const _$_WatchFullPeople(this.personEmail) : assert(personEmail != null);

  @override
  final String personEmail;

  @override
  String toString() {
    return 'PeopleEvent.watchFullPeople(personEmail: $personEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchFullPeople &&
            (identical(other.personEmail, personEmail) ||
                const DeepCollectionEquality()
                    .equals(other.personEmail, personEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(personEmail);

  @override
  _$WatchFullPeopleCopyWith<_WatchFullPeople> get copyWith =>
      __$WatchFullPeopleCopyWithImpl<_WatchFullPeople>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result followed(String personEmail),
    @required Result unfollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result watchFullPeople(String personEmail),
    @required
        Result fullPeopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQuery(String personEmail),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return watchFullPeople(personEmail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result followed(String personEmail),
    Result unfollowed(String personEmail),
    Result watchPeople(),
    Result peopleRecieved(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result watchFullPeople(String personEmail),
    Result fullPeopleRecieved(
        Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQuery(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFullPeople != null) {
      return watchFullPeople(personEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result followed(_Followed value),
    @required Result unfollowed(_Unfollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleRecieved(_PeopleRecieved value),
    @required Result watchFullPeople(_WatchFullPeople value),
    @required Result fullPeopleRecieved(_FullPeopleRecieved value),
    @required Result personSearchQuery(_PersonSearchQuery value),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return watchFullPeople(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result followed(_Followed value),
    Result unfollowed(_Unfollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleRecieved(_PeopleRecieved value),
    Result watchFullPeople(_WatchFullPeople value),
    Result fullPeopleRecieved(_FullPeopleRecieved value),
    Result personSearchQuery(_PersonSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFullPeople != null) {
      return watchFullPeople(this);
    }
    return orElse();
  }
}

abstract class _WatchFullPeople implements PeopleEvent {
  const factory _WatchFullPeople(String personEmail) = _$_WatchFullPeople;

  String get personEmail;
  _$WatchFullPeopleCopyWith<_WatchFullPeople> get copyWith;
}

/// @nodoc
abstract class _$FullPeopleRecievedCopyWith<$Res> {
  factory _$FullPeopleRecievedCopyWith(
          _FullPeopleRecieved value, $Res Function(_FullPeopleRecieved) then) =
      __$FullPeopleRecievedCopyWithImpl<$Res>;
  $Res call({Either<PeopleFailure, List<Person>> failureOrPeople});
}

/// @nodoc
class __$FullPeopleRecievedCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res>
    implements _$FullPeopleRecievedCopyWith<$Res> {
  __$FullPeopleRecievedCopyWithImpl(
      _FullPeopleRecieved _value, $Res Function(_FullPeopleRecieved) _then)
      : super(_value, (v) => _then(v as _FullPeopleRecieved));

  @override
  _FullPeopleRecieved get _value => super._value as _FullPeopleRecieved;

  @override
  $Res call({
    Object failureOrPeople = freezed,
  }) {
    return _then(_FullPeopleRecieved(
      failureOrPeople == freezed
          ? _value.failureOrPeople
          : failureOrPeople as Either<PeopleFailure, List<Person>>,
    ));
  }
}

/// @nodoc
class _$_FullPeopleRecieved implements _FullPeopleRecieved {
  const _$_FullPeopleRecieved(this.failureOrPeople)
      : assert(failureOrPeople != null);

  @override
  final Either<PeopleFailure, List<Person>> failureOrPeople;

  @override
  String toString() {
    return 'PeopleEvent.fullPeopleRecieved(failureOrPeople: $failureOrPeople)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FullPeopleRecieved &&
            (identical(other.failureOrPeople, failureOrPeople) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrPeople, failureOrPeople)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrPeople);

  @override
  _$FullPeopleRecievedCopyWith<_FullPeopleRecieved> get copyWith =>
      __$FullPeopleRecievedCopyWithImpl<_FullPeopleRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result followed(String personEmail),
    @required Result unfollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result watchFullPeople(String personEmail),
    @required
        Result fullPeopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQuery(String personEmail),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return fullPeopleRecieved(failureOrPeople);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result followed(String personEmail),
    Result unfollowed(String personEmail),
    Result watchPeople(),
    Result peopleRecieved(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result watchFullPeople(String personEmail),
    Result fullPeopleRecieved(
        Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQuery(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fullPeopleRecieved != null) {
      return fullPeopleRecieved(failureOrPeople);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result followed(_Followed value),
    @required Result unfollowed(_Unfollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleRecieved(_PeopleRecieved value),
    @required Result watchFullPeople(_WatchFullPeople value),
    @required Result fullPeopleRecieved(_FullPeopleRecieved value),
    @required Result personSearchQuery(_PersonSearchQuery value),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return fullPeopleRecieved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result followed(_Followed value),
    Result unfollowed(_Unfollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleRecieved(_PeopleRecieved value),
    Result watchFullPeople(_WatchFullPeople value),
    Result fullPeopleRecieved(_FullPeopleRecieved value),
    Result personSearchQuery(_PersonSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fullPeopleRecieved != null) {
      return fullPeopleRecieved(this);
    }
    return orElse();
  }
}

abstract class _FullPeopleRecieved implements PeopleEvent {
  const factory _FullPeopleRecieved(
          Either<PeopleFailure, List<Person>> failureOrPeople) =
      _$_FullPeopleRecieved;

  Either<PeopleFailure, List<Person>> get failureOrPeople;
  _$FullPeopleRecievedCopyWith<_FullPeopleRecieved> get copyWith;
}

/// @nodoc
abstract class _$PersonSearchQueryCopyWith<$Res> {
  factory _$PersonSearchQueryCopyWith(
          _PersonSearchQuery value, $Res Function(_PersonSearchQuery) then) =
      __$PersonSearchQueryCopyWithImpl<$Res>;
  $Res call({String personEmail});
}

/// @nodoc
class __$PersonSearchQueryCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res>
    implements _$PersonSearchQueryCopyWith<$Res> {
  __$PersonSearchQueryCopyWithImpl(
      _PersonSearchQuery _value, $Res Function(_PersonSearchQuery) _then)
      : super(_value, (v) => _then(v as _PersonSearchQuery));

  @override
  _PersonSearchQuery get _value => super._value as _PersonSearchQuery;

  @override
  $Res call({
    Object personEmail = freezed,
  }) {
    return _then(_PersonSearchQuery(
      personEmail == freezed ? _value.personEmail : personEmail as String,
    ));
  }
}

/// @nodoc
class _$_PersonSearchQuery implements _PersonSearchQuery {
  const _$_PersonSearchQuery(this.personEmail) : assert(personEmail != null);

  @override
  final String personEmail;

  @override
  String toString() {
    return 'PeopleEvent.personSearchQuery(personEmail: $personEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonSearchQuery &&
            (identical(other.personEmail, personEmail) ||
                const DeepCollectionEquality()
                    .equals(other.personEmail, personEmail)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(personEmail);

  @override
  _$PersonSearchQueryCopyWith<_PersonSearchQuery> get copyWith =>
      __$PersonSearchQueryCopyWithImpl<_PersonSearchQuery>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result followed(String personEmail),
    @required Result unfollowed(String personEmail),
    @required Result watchPeople(),
    @required
        Result peopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result watchFullPeople(String personEmail),
    @required
        Result fullPeopleRecieved(
            Either<PeopleFailure, List<Person>> failureOrPeople),
    @required Result personSearchQuery(String personEmail),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return personSearchQuery(personEmail);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result followed(String personEmail),
    Result unfollowed(String personEmail),
    Result watchPeople(),
    Result peopleRecieved(Either<PeopleFailure, List<Person>> failureOrPeople),
    Result watchFullPeople(String personEmail),
    Result fullPeopleRecieved(
        Either<PeopleFailure, List<Person>> failureOrPeople),
    Result personSearchQuery(String personEmail),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personSearchQuery != null) {
      return personSearchQuery(personEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result followed(_Followed value),
    @required Result unfollowed(_Unfollowed value),
    @required Result watchPeople(_WatchPeople value),
    @required Result peopleRecieved(_PeopleRecieved value),
    @required Result watchFullPeople(_WatchFullPeople value),
    @required Result fullPeopleRecieved(_FullPeopleRecieved value),
    @required Result personSearchQuery(_PersonSearchQuery value),
  }) {
    assert(followed != null);
    assert(unfollowed != null);
    assert(watchPeople != null);
    assert(peopleRecieved != null);
    assert(watchFullPeople != null);
    assert(fullPeopleRecieved != null);
    assert(personSearchQuery != null);
    return personSearchQuery(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result followed(_Followed value),
    Result unfollowed(_Unfollowed value),
    Result watchPeople(_WatchPeople value),
    Result peopleRecieved(_PeopleRecieved value),
    Result watchFullPeople(_WatchFullPeople value),
    Result fullPeopleRecieved(_FullPeopleRecieved value),
    Result personSearchQuery(_PersonSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personSearchQuery != null) {
      return personSearchQuery(this);
    }
    return orElse();
  }
}

abstract class _PersonSearchQuery implements PeopleEvent {
  const factory _PersonSearchQuery(String personEmail) = _$_PersonSearchQuery;

  String get personEmail;
  _$PersonSearchQueryCopyWith<_PersonSearchQuery> get copyWith;
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
  _UnfollowSuccess unfollowSuccess() {
    return const _UnfollowSuccess();
  }

// ignore: unused_element
  _WatchPeopleSuccess watchPeopleSuccess(List<Person> people) {
    return _WatchPeopleSuccess(
      people,
    );
  }

// ignore: unused_element
  _WatchFullPeopleSuccess watchFullPeopleSuccess(List<Person> people) {
    return _WatchFullPeopleSuccess(
      people,
    );
  }

// ignore: unused_element
  _LoadSuccessforSearchQuery loadSuccessforSearchQuery(Person person) {
    return _LoadSuccessforSearchQuery(
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
    @required Result watchPeopleSuccess(List<Person> people),
    @required Result watchFullPeopleSuccess(List<Person> people),
    @required Result loadSuccessforSearchQuery(Person person),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchPeopleSuccess(List<Person> people),
    Result watchFullPeopleSuccess(List<Person> people),
    Result loadSuccessforSearchQuery(Person person),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result followSuccess(_FollowSuccess value),
    @required Result unfollowSuccess(_UnfollowSuccess value),
    @required Result watchPeopleSuccess(_WatchPeopleSuccess value),
    @required Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    @required
        Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnfollowSuccess value),
    Result watchPeopleSuccess(_WatchPeopleSuccess value),
    Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
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
    @required Result watchPeopleSuccess(List<Person> people),
    @required Result watchFullPeopleSuccess(List<Person> people),
    @required Result loadSuccessforSearchQuery(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
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
    Result watchPeopleSuccess(List<Person> people),
    Result watchFullPeopleSuccess(List<Person> people),
    Result loadSuccessforSearchQuery(Person person),
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
    @required Result unfollowSuccess(_UnfollowSuccess value),
    @required Result watchPeopleSuccess(_WatchPeopleSuccess value),
    @required Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    @required
        Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnfollowSuccess value),
    Result watchPeopleSuccess(_WatchPeopleSuccess value),
    Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
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
    @required Result watchPeopleSuccess(List<Person> people),
    @required Result watchFullPeopleSuccess(List<Person> people),
    @required Result loadSuccessforSearchQuery(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
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
    Result watchPeopleSuccess(List<Person> people),
    Result watchFullPeopleSuccess(List<Person> people),
    Result loadSuccessforSearchQuery(Person person),
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
    @required Result unfollowSuccess(_UnfollowSuccess value),
    @required Result watchPeopleSuccess(_WatchPeopleSuccess value),
    @required Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    @required
        Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnfollowSuccess value),
    Result watchPeopleSuccess(_WatchPeopleSuccess value),
    Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
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
    @required Result watchPeopleSuccess(List<Person> people),
    @required Result watchFullPeopleSuccess(List<Person> people),
    @required Result loadSuccessforSearchQuery(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
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
    Result watchPeopleSuccess(List<Person> people),
    Result watchFullPeopleSuccess(List<Person> people),
    Result loadSuccessforSearchQuery(Person person),
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
    @required Result unfollowSuccess(_UnfollowSuccess value),
    @required Result watchPeopleSuccess(_WatchPeopleSuccess value),
    @required Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    @required
        Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnfollowSuccess value),
    Result watchPeopleSuccess(_WatchPeopleSuccess value),
    Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
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
    @required Result watchPeopleSuccess(List<Person> people),
    @required Result watchFullPeopleSuccess(List<Person> people),
    @required Result loadSuccessforSearchQuery(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
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
    Result watchPeopleSuccess(List<Person> people),
    Result watchFullPeopleSuccess(List<Person> people),
    Result loadSuccessforSearchQuery(Person person),
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
    @required Result unfollowSuccess(_UnfollowSuccess value),
    @required Result watchPeopleSuccess(_WatchPeopleSuccess value),
    @required Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    @required
        Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return followSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnfollowSuccess value),
    Result watchPeopleSuccess(_WatchPeopleSuccess value),
    Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
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
abstract class _$UnfollowSuccessCopyWith<$Res> {
  factory _$UnfollowSuccessCopyWith(
          _UnfollowSuccess value, $Res Function(_UnfollowSuccess) then) =
      __$UnfollowSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnfollowSuccessCopyWithImpl<$Res>
    extends _$PeopleStateCopyWithImpl<$Res>
    implements _$UnfollowSuccessCopyWith<$Res> {
  __$UnfollowSuccessCopyWithImpl(
      _UnfollowSuccess _value, $Res Function(_UnfollowSuccess) _then)
      : super(_value, (v) => _then(v as _UnfollowSuccess));

  @override
  _UnfollowSuccess get _value => super._value as _UnfollowSuccess;
}

/// @nodoc
class _$_UnfollowSuccess implements _UnfollowSuccess {
  const _$_UnfollowSuccess();

  @override
  String toString() {
    return 'PeopleState.unfollowSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnfollowSuccess);
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
    @required Result watchPeopleSuccess(List<Person> people),
    @required Result watchFullPeopleSuccess(List<Person> people),
    @required Result loadSuccessforSearchQuery(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
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
    Result watchPeopleSuccess(List<Person> people),
    Result watchFullPeopleSuccess(List<Person> people),
    Result loadSuccessforSearchQuery(Person person),
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
    @required Result unfollowSuccess(_UnfollowSuccess value),
    @required Result watchPeopleSuccess(_WatchPeopleSuccess value),
    @required Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    @required
        Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return unfollowSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnfollowSuccess value),
    Result watchPeopleSuccess(_WatchPeopleSuccess value),
    Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unfollowSuccess != null) {
      return unfollowSuccess(this);
    }
    return orElse();
  }
}

abstract class _UnfollowSuccess implements PeopleState {
  const factory _UnfollowSuccess() = _$_UnfollowSuccess;
}

/// @nodoc
abstract class _$WatchPeopleSuccessCopyWith<$Res> {
  factory _$WatchPeopleSuccessCopyWith(
          _WatchPeopleSuccess value, $Res Function(_WatchPeopleSuccess) then) =
      __$WatchPeopleSuccessCopyWithImpl<$Res>;
  $Res call({List<Person> people});
}

/// @nodoc
class __$WatchPeopleSuccessCopyWithImpl<$Res>
    extends _$PeopleStateCopyWithImpl<$Res>
    implements _$WatchPeopleSuccessCopyWith<$Res> {
  __$WatchPeopleSuccessCopyWithImpl(
      _WatchPeopleSuccess _value, $Res Function(_WatchPeopleSuccess) _then)
      : super(_value, (v) => _then(v as _WatchPeopleSuccess));

  @override
  _WatchPeopleSuccess get _value => super._value as _WatchPeopleSuccess;

  @override
  $Res call({
    Object people = freezed,
  }) {
    return _then(_WatchPeopleSuccess(
      people == freezed ? _value.people : people as List<Person>,
    ));
  }
}

/// @nodoc
class _$_WatchPeopleSuccess implements _WatchPeopleSuccess {
  const _$_WatchPeopleSuccess(this.people) : assert(people != null);

  @override
  final List<Person> people;

  @override
  String toString() {
    return 'PeopleState.watchPeopleSuccess(people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchPeopleSuccess &&
            (identical(other.people, people) ||
                const DeepCollectionEquality().equals(other.people, people)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(people);

  @override
  _$WatchPeopleSuccessCopyWith<_WatchPeopleSuccess> get copyWith =>
      __$WatchPeopleSuccessCopyWithImpl<_WatchPeopleSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchPeopleSuccess(List<Person> people),
    @required Result watchFullPeopleSuccess(List<Person> people),
    @required Result loadSuccessforSearchQuery(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return watchPeopleSuccess(people);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchPeopleSuccess(List<Person> people),
    Result watchFullPeopleSuccess(List<Person> people),
    Result loadSuccessforSearchQuery(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchPeopleSuccess != null) {
      return watchPeopleSuccess(people);
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
    @required Result unfollowSuccess(_UnfollowSuccess value),
    @required Result watchPeopleSuccess(_WatchPeopleSuccess value),
    @required Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    @required
        Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return watchPeopleSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnfollowSuccess value),
    Result watchPeopleSuccess(_WatchPeopleSuccess value),
    Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchPeopleSuccess != null) {
      return watchPeopleSuccess(this);
    }
    return orElse();
  }
}

abstract class _WatchPeopleSuccess implements PeopleState {
  const factory _WatchPeopleSuccess(List<Person> people) =
      _$_WatchPeopleSuccess;

  List<Person> get people;
  _$WatchPeopleSuccessCopyWith<_WatchPeopleSuccess> get copyWith;
}

/// @nodoc
abstract class _$WatchFullPeopleSuccessCopyWith<$Res> {
  factory _$WatchFullPeopleSuccessCopyWith(_WatchFullPeopleSuccess value,
          $Res Function(_WatchFullPeopleSuccess) then) =
      __$WatchFullPeopleSuccessCopyWithImpl<$Res>;
  $Res call({List<Person> people});
}

/// @nodoc
class __$WatchFullPeopleSuccessCopyWithImpl<$Res>
    extends _$PeopleStateCopyWithImpl<$Res>
    implements _$WatchFullPeopleSuccessCopyWith<$Res> {
  __$WatchFullPeopleSuccessCopyWithImpl(_WatchFullPeopleSuccess _value,
      $Res Function(_WatchFullPeopleSuccess) _then)
      : super(_value, (v) => _then(v as _WatchFullPeopleSuccess));

  @override
  _WatchFullPeopleSuccess get _value => super._value as _WatchFullPeopleSuccess;

  @override
  $Res call({
    Object people = freezed,
  }) {
    return _then(_WatchFullPeopleSuccess(
      people == freezed ? _value.people : people as List<Person>,
    ));
  }
}

/// @nodoc
class _$_WatchFullPeopleSuccess implements _WatchFullPeopleSuccess {
  const _$_WatchFullPeopleSuccess(this.people) : assert(people != null);

  @override
  final List<Person> people;

  @override
  String toString() {
    return 'PeopleState.watchFullPeopleSuccess(people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchFullPeopleSuccess &&
            (identical(other.people, people) ||
                const DeepCollectionEquality().equals(other.people, people)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(people);

  @override
  _$WatchFullPeopleSuccessCopyWith<_WatchFullPeopleSuccess> get copyWith =>
      __$WatchFullPeopleSuccessCopyWithImpl<_WatchFullPeopleSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchPeopleSuccess(List<Person> people),
    @required Result watchFullPeopleSuccess(List<Person> people),
    @required Result loadSuccessforSearchQuery(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return watchFullPeopleSuccess(people);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchPeopleSuccess(List<Person> people),
    Result watchFullPeopleSuccess(List<Person> people),
    Result loadSuccessforSearchQuery(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFullPeopleSuccess != null) {
      return watchFullPeopleSuccess(people);
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
    @required Result unfollowSuccess(_UnfollowSuccess value),
    @required Result watchPeopleSuccess(_WatchPeopleSuccess value),
    @required Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    @required
        Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return watchFullPeopleSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnfollowSuccess value),
    Result watchPeopleSuccess(_WatchPeopleSuccess value),
    Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFullPeopleSuccess != null) {
      return watchFullPeopleSuccess(this);
    }
    return orElse();
  }
}

abstract class _WatchFullPeopleSuccess implements PeopleState {
  const factory _WatchFullPeopleSuccess(List<Person> people) =
      _$_WatchFullPeopleSuccess;

  List<Person> get people;
  _$WatchFullPeopleSuccessCopyWith<_WatchFullPeopleSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessforSearchQueryCopyWith<$Res> {
  factory _$LoadSuccessforSearchQueryCopyWith(_LoadSuccessforSearchQuery value,
          $Res Function(_LoadSuccessforSearchQuery) then) =
      __$LoadSuccessforSearchQueryCopyWithImpl<$Res>;
  $Res call({Person person});
}

/// @nodoc
class __$LoadSuccessforSearchQueryCopyWithImpl<$Res>
    extends _$PeopleStateCopyWithImpl<$Res>
    implements _$LoadSuccessforSearchQueryCopyWith<$Res> {
  __$LoadSuccessforSearchQueryCopyWithImpl(_LoadSuccessforSearchQuery _value,
      $Res Function(_LoadSuccessforSearchQuery) _then)
      : super(_value, (v) => _then(v as _LoadSuccessforSearchQuery));

  @override
  _LoadSuccessforSearchQuery get _value =>
      super._value as _LoadSuccessforSearchQuery;

  @override
  $Res call({
    Object person = freezed,
  }) {
    return _then(_LoadSuccessforSearchQuery(
      person == freezed ? _value.person : person as Person,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessforSearchQuery implements _LoadSuccessforSearchQuery {
  const _$_LoadSuccessforSearchQuery(this.person) : assert(person != null);

  @override
  final Person person;

  @override
  String toString() {
    return 'PeopleState.loadSuccessforSearchQuery(person: $person)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessforSearchQuery &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(person);

  @override
  _$LoadSuccessforSearchQueryCopyWith<_LoadSuccessforSearchQuery>
      get copyWith =>
          __$LoadSuccessforSearchQueryCopyWithImpl<_LoadSuccessforSearchQuery>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(PeopleFailure peopleFailure),
    @required Result followSuccess(),
    @required Result unfollowSuccess(),
    @required Result watchPeopleSuccess(List<Person> people),
    @required Result watchFullPeopleSuccess(List<Person> people),
    @required Result loadSuccessforSearchQuery(Person person),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return loadSuccessforSearchQuery(person);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(PeopleFailure peopleFailure),
    Result followSuccess(),
    Result unfollowSuccess(),
    Result watchPeopleSuccess(List<Person> people),
    Result watchFullPeopleSuccess(List<Person> people),
    Result loadSuccessforSearchQuery(Person person),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessforSearchQuery != null) {
      return loadSuccessforSearchQuery(person);
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
    @required Result unfollowSuccess(_UnfollowSuccess value),
    @required Result watchPeopleSuccess(_WatchPeopleSuccess value),
    @required Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    @required
        Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(followSuccess != null);
    assert(unfollowSuccess != null);
    assert(watchPeopleSuccess != null);
    assert(watchFullPeopleSuccess != null);
    assert(loadSuccessforSearchQuery != null);
    return loadSuccessforSearchQuery(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result followSuccess(_FollowSuccess value),
    Result unfollowSuccess(_UnfollowSuccess value),
    Result watchPeopleSuccess(_WatchPeopleSuccess value),
    Result watchFullPeopleSuccess(_WatchFullPeopleSuccess value),
    Result loadSuccessforSearchQuery(_LoadSuccessforSearchQuery value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessforSearchQuery != null) {
      return loadSuccessforSearchQuery(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessforSearchQuery implements PeopleState {
  const factory _LoadSuccessforSearchQuery(Person person) =
      _$_LoadSuccessforSearchQuery;

  Person get person;
  _$LoadSuccessforSearchQueryCopyWith<_LoadSuccessforSearchQuery> get copyWith;
}
