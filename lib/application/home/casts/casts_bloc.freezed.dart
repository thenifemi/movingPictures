// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'casts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CastsEventTearOff {
  const _$CastsEventTearOff();

// ignore: unused_element
  _GetCastCalled getCastCalled(int castId) {
    return _GetCastCalled(
      castId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CastsEvent = _$CastsEventTearOff();

/// @nodoc
mixin _$CastsEvent {
  int get castId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCastCalled(int castId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCastCalled(int castId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCastCalled(_GetCastCalled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCastCalled(_GetCastCalled value),
    @required Result orElse(),
  });

  $CastsEventCopyWith<CastsEvent> get copyWith;
}

/// @nodoc
abstract class $CastsEventCopyWith<$Res> {
  factory $CastsEventCopyWith(
          CastsEvent value, $Res Function(CastsEvent) then) =
      _$CastsEventCopyWithImpl<$Res>;
  $Res call({int castId});
}

/// @nodoc
class _$CastsEventCopyWithImpl<$Res> implements $CastsEventCopyWith<$Res> {
  _$CastsEventCopyWithImpl(this._value, this._then);

  final CastsEvent _value;
  // ignore: unused_field
  final $Res Function(CastsEvent) _then;

  @override
  $Res call({
    Object castId = freezed,
  }) {
    return _then(_value.copyWith(
      castId: castId == freezed ? _value.castId : castId as int,
    ));
  }
}

/// @nodoc
abstract class _$GetCastCalledCopyWith<$Res>
    implements $CastsEventCopyWith<$Res> {
  factory _$GetCastCalledCopyWith(
          _GetCastCalled value, $Res Function(_GetCastCalled) then) =
      __$GetCastCalledCopyWithImpl<$Res>;
  @override
  $Res call({int castId});
}

/// @nodoc
class __$GetCastCalledCopyWithImpl<$Res> extends _$CastsEventCopyWithImpl<$Res>
    implements _$GetCastCalledCopyWith<$Res> {
  __$GetCastCalledCopyWithImpl(
      _GetCastCalled _value, $Res Function(_GetCastCalled) _then)
      : super(_value, (v) => _then(v as _GetCastCalled));

  @override
  _GetCastCalled get _value => super._value as _GetCastCalled;

  @override
  $Res call({
    Object castId = freezed,
  }) {
    return _then(_GetCastCalled(
      castId == freezed ? _value.castId : castId as int,
    ));
  }
}

/// @nodoc
class _$_GetCastCalled implements _GetCastCalled {
  const _$_GetCastCalled(this.castId) : assert(castId != null);

  @override
  final int castId;

  @override
  String toString() {
    return 'CastsEvent.getCastCalled(castId: $castId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetCastCalled &&
            (identical(other.castId, castId) ||
                const DeepCollectionEquality().equals(other.castId, castId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(castId);

  @override
  _$GetCastCalledCopyWith<_GetCastCalled> get copyWith =>
      __$GetCastCalledCopyWithImpl<_GetCastCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getCastCalled(int castId),
  }) {
    assert(getCastCalled != null);
    return getCastCalled(castId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getCastCalled(int castId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCastCalled != null) {
      return getCastCalled(castId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getCastCalled(_GetCastCalled value),
  }) {
    assert(getCastCalled != null);
    return getCastCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getCastCalled(_GetCastCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getCastCalled != null) {
      return getCastCalled(this);
    }
    return orElse();
  }
}

abstract class _GetCastCalled implements CastsEvent {
  const factory _GetCastCalled(int castId) = _$_GetCastCalled;

  @override
  int get castId;
  @override
  _$GetCastCalledCopyWith<_GetCastCalled> get copyWith;
}

/// @nodoc
class _$CastsStateTearOff {
  const _$CastsStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(Cast cast) {
    return _LoadSuccess(
      cast,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(CastFailure castFailure) {
    return _LoadFailure(
      castFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CastsState = _$CastsStateTearOff();

/// @nodoc
mixin _$CastsState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(Cast cast),
    @required Result loadFailure(CastFailure castFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(Cast cast),
    Result loadFailure(CastFailure castFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CastsStateCopyWith<$Res> {
  factory $CastsStateCopyWith(
          CastsState value, $Res Function(CastsState) then) =
      _$CastsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CastsStateCopyWithImpl<$Res> implements $CastsStateCopyWith<$Res> {
  _$CastsStateCopyWithImpl(this._value, this._then);

  final CastsState _value;
  // ignore: unused_field
  final $Res Function(CastsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CastsStateCopyWithImpl<$Res>
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
    return 'CastsState.initial()';
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
    @required Result loadSuccess(Cast cast),
    @required Result loadFailure(CastFailure castFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(Cast cast),
    Result loadFailure(CastFailure castFailure),
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
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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

abstract class _Initial implements CastsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$CastsStateCopyWithImpl<$Res>
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
    return 'CastsState.loading()';
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
    @required Result loadSuccess(Cast cast),
    @required Result loadFailure(CastFailure castFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(Cast cast),
    Result loadFailure(CastFailure castFailure),
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
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CastsState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Cast cast});

  $CastCopyWith<$Res> get cast;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$CastsStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_LoadSuccess(
      cast == freezed ? _value.cast : cast as Cast,
    ));
  }

  @override
  $CastCopyWith<$Res> get cast {
    if (_value.cast == null) {
      return null;
    }
    return $CastCopyWith<$Res>(_value.cast, (value) {
      return _then(_value.copyWith(cast: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.cast) : assert(cast != null);

  @override
  final Cast cast;

  @override
  String toString() {
    return 'CastsState.loadSuccess(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cast);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(Cast cast),
    @required Result loadFailure(CastFailure castFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(cast);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(Cast cast),
    Result loadFailure(CastFailure castFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(cast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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

abstract class _LoadSuccess implements CastsState {
  const factory _LoadSuccess(Cast cast) = _$_LoadSuccess;

  Cast get cast;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({CastFailure castFailure});

  $CastFailureCopyWith<$Res> get castFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$CastsStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object castFailure = freezed,
  }) {
    return _then(_LoadFailure(
      castFailure == freezed ? _value.castFailure : castFailure as CastFailure,
    ));
  }

  @override
  $CastFailureCopyWith<$Res> get castFailure {
    if (_value.castFailure == null) {
      return null;
    }
    return $CastFailureCopyWith<$Res>(_value.castFailure, (value) {
      return _then(_value.copyWith(castFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.castFailure) : assert(castFailure != null);

  @override
  final CastFailure castFailure;

  @override
  String toString() {
    return 'CastsState.loadFailure(castFailure: $castFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.castFailure, castFailure) ||
                const DeepCollectionEquality()
                    .equals(other.castFailure, castFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(castFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(Cast cast),
    @required Result loadFailure(CastFailure castFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(castFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(Cast cast),
    Result loadFailure(CastFailure castFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(castFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
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

abstract class _LoadFailure implements CastsState {
  const factory _LoadFailure(CastFailure castFailure) = _$_LoadFailure;

  CastFailure get castFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
