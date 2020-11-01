// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileEventTearOff {
  const _$UserProfileEventTearOff();

// ignore: unused_element
  _WatchProfileStarted watchProfileStarted() {
    return const _WatchProfileStarted();
  }

// ignore: unused_element
  _ProfileRecieved profileRecieved(
      Either<AppUserFailure, AppUser> failureOrProfile) {
    return _ProfileRecieved(
      failureOrProfile,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileEvent = _$UserProfileEventTearOff();

/// @nodoc
mixin _$UserProfileEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchProfileStarted(),
    @required
        Result profileRecieved(
            Either<AppUserFailure, AppUser> failureOrProfile),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchProfileStarted(),
    Result profileRecieved(Either<AppUserFailure, AppUser> failureOrProfile),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchProfileStarted(_WatchProfileStarted value),
    @required Result profileRecieved(_ProfileRecieved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchProfileStarted(_WatchProfileStarted value),
    Result profileRecieved(_ProfileRecieved value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserProfileEventCopyWith<$Res> {
  factory $UserProfileEventCopyWith(
          UserProfileEvent value, $Res Function(UserProfileEvent) then) =
      _$UserProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileEventCopyWithImpl<$Res>
    implements $UserProfileEventCopyWith<$Res> {
  _$UserProfileEventCopyWithImpl(this._value, this._then);

  final UserProfileEvent _value;
  // ignore: unused_field
  final $Res Function(UserProfileEvent) _then;
}

/// @nodoc
abstract class _$WatchProfileStartedCopyWith<$Res> {
  factory _$WatchProfileStartedCopyWith(_WatchProfileStarted value,
          $Res Function(_WatchProfileStarted) then) =
      __$WatchProfileStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchProfileStartedCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$WatchProfileStartedCopyWith<$Res> {
  __$WatchProfileStartedCopyWithImpl(
      _WatchProfileStarted _value, $Res Function(_WatchProfileStarted) _then)
      : super(_value, (v) => _then(v as _WatchProfileStarted));

  @override
  _WatchProfileStarted get _value => super._value as _WatchProfileStarted;
}

/// @nodoc
class _$_WatchProfileStarted implements _WatchProfileStarted {
  const _$_WatchProfileStarted();

  @override
  String toString() {
    return 'UserProfileEvent.watchProfileStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchProfileStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchProfileStarted(),
    @required
        Result profileRecieved(
            Either<AppUserFailure, AppUser> failureOrProfile),
  }) {
    assert(watchProfileStarted != null);
    assert(profileRecieved != null);
    return watchProfileStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchProfileStarted(),
    Result profileRecieved(Either<AppUserFailure, AppUser> failureOrProfile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchProfileStarted != null) {
      return watchProfileStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchProfileStarted(_WatchProfileStarted value),
    @required Result profileRecieved(_ProfileRecieved value),
  }) {
    assert(watchProfileStarted != null);
    assert(profileRecieved != null);
    return watchProfileStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchProfileStarted(_WatchProfileStarted value),
    Result profileRecieved(_ProfileRecieved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchProfileStarted != null) {
      return watchProfileStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchProfileStarted implements UserProfileEvent {
  const factory _WatchProfileStarted() = _$_WatchProfileStarted;
}

/// @nodoc
abstract class _$ProfileRecievedCopyWith<$Res> {
  factory _$ProfileRecievedCopyWith(
          _ProfileRecieved value, $Res Function(_ProfileRecieved) then) =
      __$ProfileRecievedCopyWithImpl<$Res>;
  $Res call({Either<AppUserFailure, AppUser> failureOrProfile});
}

/// @nodoc
class __$ProfileRecievedCopyWithImpl<$Res>
    extends _$UserProfileEventCopyWithImpl<$Res>
    implements _$ProfileRecievedCopyWith<$Res> {
  __$ProfileRecievedCopyWithImpl(
      _ProfileRecieved _value, $Res Function(_ProfileRecieved) _then)
      : super(_value, (v) => _then(v as _ProfileRecieved));

  @override
  _ProfileRecieved get _value => super._value as _ProfileRecieved;

  @override
  $Res call({
    Object failureOrProfile = freezed,
  }) {
    return _then(_ProfileRecieved(
      failureOrProfile == freezed
          ? _value.failureOrProfile
          : failureOrProfile as Either<AppUserFailure, AppUser>,
    ));
  }
}

/// @nodoc
class _$_ProfileRecieved implements _ProfileRecieved {
  const _$_ProfileRecieved(this.failureOrProfile)
      : assert(failureOrProfile != null);

  @override
  final Either<AppUserFailure, AppUser> failureOrProfile;

  @override
  String toString() {
    return 'UserProfileEvent.profileRecieved(failureOrProfile: $failureOrProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileRecieved &&
            (identical(other.failureOrProfile, failureOrProfile) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrProfile, failureOrProfile)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrProfile);

  @override
  _$ProfileRecievedCopyWith<_ProfileRecieved> get copyWith =>
      __$ProfileRecievedCopyWithImpl<_ProfileRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchProfileStarted(),
    @required
        Result profileRecieved(
            Either<AppUserFailure, AppUser> failureOrProfile),
  }) {
    assert(watchProfileStarted != null);
    assert(profileRecieved != null);
    return profileRecieved(failureOrProfile);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchProfileStarted(),
    Result profileRecieved(Either<AppUserFailure, AppUser> failureOrProfile),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileRecieved != null) {
      return profileRecieved(failureOrProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchProfileStarted(_WatchProfileStarted value),
    @required Result profileRecieved(_ProfileRecieved value),
  }) {
    assert(watchProfileStarted != null);
    assert(profileRecieved != null);
    return profileRecieved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchProfileStarted(_WatchProfileStarted value),
    Result profileRecieved(_ProfileRecieved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (profileRecieved != null) {
      return profileRecieved(this);
    }
    return orElse();
  }
}

abstract class _ProfileRecieved implements UserProfileEvent {
  const factory _ProfileRecieved(
      Either<AppUserFailure, AppUser> failureOrProfile) = _$_ProfileRecieved;

  Either<AppUserFailure, AppUser> get failureOrProfile;
  _$ProfileRecievedCopyWith<_ProfileRecieved> get copyWith;
}

/// @nodoc
class _$UserProfileStateTearOff {
  const _$UserProfileStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadingProgress loadingProgress() {
    return const _LoadingProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(AppUser appUser) {
    return _LoadSuccess(
      appUser,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(AppUserFailure appUserFailure) {
    return _LoadFailure(
      appUserFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileState = _$UserProfileStateTearOff();

/// @nodoc
mixin _$UserProfileState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadSuccess(AppUser appUser),
    @required Result loadFailure(AppUserFailure appUserFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadSuccess(AppUser appUser),
    Result loadFailure(AppUserFailure appUserFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  final UserProfileState _value;
  // ignore: unused_field
  final $Res Function(UserProfileState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserProfileStateCopyWithImpl<$Res>
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
    return 'UserProfileState.initial()';
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
    @required Result loadingProgress(),
    @required Result loadSuccess(AppUser appUser),
    @required Result loadFailure(AppUserFailure appUserFailure),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadSuccess(AppUser appUser),
    Result loadFailure(AppUserFailure appUserFailure),
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
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingProgressCopyWith<$Res> {
  factory _$LoadingProgressCopyWith(
          _LoadingProgress value, $Res Function(_LoadingProgress) then) =
      __$LoadingProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingProgressCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$LoadingProgressCopyWith<$Res> {
  __$LoadingProgressCopyWithImpl(
      _LoadingProgress _value, $Res Function(_LoadingProgress) _then)
      : super(_value, (v) => _then(v as _LoadingProgress));

  @override
  _LoadingProgress get _value => super._value as _LoadingProgress;
}

/// @nodoc
class _$_LoadingProgress implements _LoadingProgress {
  const _$_LoadingProgress();

  @override
  String toString() {
    return 'UserProfileState.loadingProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadingProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadSuccess(AppUser appUser),
    @required Result loadFailure(AppUserFailure appUserFailure),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadingProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadSuccess(AppUser appUser),
    Result loadFailure(AppUserFailure appUserFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingProgress != null) {
      return loadingProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadingProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadingProgress != null) {
      return loadingProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadingProgress implements UserProfileState {
  const factory _LoadingProgress() = _$_LoadingProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({AppUser appUser});

  $AppUserCopyWith<$Res> get appUser;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object appUser = freezed,
  }) {
    return _then(_LoadSuccess(
      appUser == freezed ? _value.appUser : appUser as AppUser,
    ));
  }

  @override
  $AppUserCopyWith<$Res> get appUser {
    if (_value.appUser == null) {
      return null;
    }
    return $AppUserCopyWith<$Res>(_value.appUser, (value) {
      return _then(_value.copyWith(appUser: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.appUser) : assert(appUser != null);

  @override
  final AppUser appUser;

  @override
  String toString() {
    return 'UserProfileState.loadSuccess(appUser: $appUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.appUser, appUser) ||
                const DeepCollectionEquality().equals(other.appUser, appUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(appUser);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadSuccess(AppUser appUser),
    @required Result loadFailure(AppUserFailure appUserFailure),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(appUser);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadSuccess(AppUser appUser),
    Result loadFailure(AppUserFailure appUserFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(appUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements UserProfileState {
  const factory _LoadSuccess(AppUser appUser) = _$_LoadSuccess;

  AppUser get appUser;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({AppUserFailure appUserFailure});

  $AppUserFailureCopyWith<$Res> get appUserFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object appUserFailure = freezed,
  }) {
    return _then(_LoadFailure(
      appUserFailure == freezed
          ? _value.appUserFailure
          : appUserFailure as AppUserFailure,
    ));
  }

  @override
  $AppUserFailureCopyWith<$Res> get appUserFailure {
    if (_value.appUserFailure == null) {
      return null;
    }
    return $AppUserFailureCopyWith<$Res>(_value.appUserFailure, (value) {
      return _then(_value.copyWith(appUserFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.appUserFailure) : assert(appUserFailure != null);

  @override
  final AppUserFailure appUserFailure;

  @override
  String toString() {
    return 'UserProfileState.loadFailure(appUserFailure: $appUserFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.appUserFailure, appUserFailure) ||
                const DeepCollectionEquality()
                    .equals(other.appUserFailure, appUserFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appUserFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadingProgress(),
    @required Result loadSuccess(AppUser appUser),
    @required Result loadFailure(AppUserFailure appUserFailure),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(appUserFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadingProgress(),
    Result loadSuccess(AppUser appUser),
    Result loadFailure(AppUserFailure appUserFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(appUserFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadingProgress(_LoadingProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadingProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadingProgress(_LoadingProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements UserProfileState {
  const factory _LoadFailure(AppUserFailure appUserFailure) = _$_LoadFailure;

  AppUserFailure get appUserFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
