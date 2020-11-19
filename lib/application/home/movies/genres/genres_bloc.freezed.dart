// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'genres_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GenresEventTearOff {
  const _$GenresEventTearOff();

// ignore: unused_element
  _GetGenresCalled getGenresCalled() {
    return const _GetGenresCalled();
  }
}

/// @nodoc
// ignore: unused_element
const $GenresEvent = _$GenresEventTearOff();

/// @nodoc
mixin _$GenresEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGenresCalled(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGenresCalled(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGenresCalled(_GetGenresCalled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGenresCalled(_GetGenresCalled value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GenresEventCopyWith<$Res> {
  factory $GenresEventCopyWith(
          GenresEvent value, $Res Function(GenresEvent) then) =
      _$GenresEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenresEventCopyWithImpl<$Res> implements $GenresEventCopyWith<$Res> {
  _$GenresEventCopyWithImpl(this._value, this._then);

  final GenresEvent _value;
  // ignore: unused_field
  final $Res Function(GenresEvent) _then;
}

/// @nodoc
abstract class _$GetGenresCalledCopyWith<$Res> {
  factory _$GetGenresCalledCopyWith(
          _GetGenresCalled value, $Res Function(_GetGenresCalled) then) =
      __$GetGenresCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGenresCalledCopyWithImpl<$Res>
    extends _$GenresEventCopyWithImpl<$Res>
    implements _$GetGenresCalledCopyWith<$Res> {
  __$GetGenresCalledCopyWithImpl(
      _GetGenresCalled _value, $Res Function(_GetGenresCalled) _then)
      : super(_value, (v) => _then(v as _GetGenresCalled));

  @override
  _GetGenresCalled get _value => super._value as _GetGenresCalled;
}

/// @nodoc
class _$_GetGenresCalled implements _GetGenresCalled {
  const _$_GetGenresCalled();

  @override
  String toString() {
    return 'GenresEvent.getGenresCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetGenresCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGenresCalled(),
  }) {
    assert(getGenresCalled != null);
    return getGenresCalled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGenresCalled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getGenresCalled != null) {
      return getGenresCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGenresCalled(_GetGenresCalled value),
  }) {
    assert(getGenresCalled != null);
    return getGenresCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGenresCalled(_GetGenresCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getGenresCalled != null) {
      return getGenresCalled(this);
    }
    return orElse();
  }
}

abstract class _GetGenresCalled implements GenresEvent {
  const factory _GetGenresCalled() = _$_GetGenresCalled;
}

/// @nodoc
class _$GenresStateTearOff {
  const _$GenresStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Genre> genres) {
    return _LoadSuccess(
      genres,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(GenreFailure genreFailure) {
    return _LoadFailure(
      genreFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GenresState = _$GenresStateTearOff();

/// @nodoc
mixin _$GenresState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Genre> genres),
    @required Result loadFailure(GenreFailure genreFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Genre> genres),
    Result loadFailure(GenreFailure genreFailure),
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
abstract class $GenresStateCopyWith<$Res> {
  factory $GenresStateCopyWith(
          GenresState value, $Res Function(GenresState) then) =
      _$GenresStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenresStateCopyWithImpl<$Res> implements $GenresStateCopyWith<$Res> {
  _$GenresStateCopyWithImpl(this._value, this._then);

  final GenresState _value;
  // ignore: unused_field
  final $Res Function(GenresState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$GenresStateCopyWithImpl<$Res>
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
    return 'GenresState.initial()';
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
    @required Result loadSuccess(List<Genre> genres),
    @required Result loadFailure(GenreFailure genreFailure),
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
    Result loadSuccess(List<Genre> genres),
    Result loadFailure(GenreFailure genreFailure),
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

abstract class _Initial implements GenresState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$GenresStateCopyWithImpl<$Res>
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
    return 'GenresState.loading()';
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
    @required Result loadSuccess(List<Genre> genres),
    @required Result loadFailure(GenreFailure genreFailure),
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
    Result loadSuccess(List<Genre> genres),
    Result loadFailure(GenreFailure genreFailure),
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

abstract class _Loading implements GenresState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Genre> genres});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$GenresStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object genres = freezed,
  }) {
    return _then(_LoadSuccess(
      genres == freezed ? _value.genres : genres as List<Genre>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.genres) : assert(genres != null);

  @override
  final List<Genre> genres;

  @override
  String toString() {
    return 'GenresState.loadSuccess(genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genres);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Genre> genres),
    @required Result loadFailure(GenreFailure genreFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(genres);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Genre> genres),
    Result loadFailure(GenreFailure genreFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(genres);
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

abstract class _LoadSuccess implements GenresState {
  const factory _LoadSuccess(List<Genre> genres) = _$_LoadSuccess;

  List<Genre> get genres;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({GenreFailure genreFailure});

  $GenreFailureCopyWith<$Res> get genreFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$GenresStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object genreFailure = freezed,
  }) {
    return _then(_LoadFailure(
      genreFailure == freezed
          ? _value.genreFailure
          : genreFailure as GenreFailure,
    ));
  }

  @override
  $GenreFailureCopyWith<$Res> get genreFailure {
    if (_value.genreFailure == null) {
      return null;
    }
    return $GenreFailureCopyWith<$Res>(_value.genreFailure, (value) {
      return _then(_value.copyWith(genreFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.genreFailure) : assert(genreFailure != null);

  @override
  final GenreFailure genreFailure;

  @override
  String toString() {
    return 'GenresState.loadFailure(genreFailure: $genreFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.genreFailure, genreFailure) ||
                const DeepCollectionEquality()
                    .equals(other.genreFailure, genreFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genreFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Genre> genres),
    @required Result loadFailure(GenreFailure genreFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(genreFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Genre> genres),
    Result loadFailure(GenreFailure genreFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(genreFailure);
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

abstract class _LoadFailure implements GenresState {
  const factory _LoadFailure(GenreFailure genreFailure) = _$_LoadFailure;

  GenreFailure get genreFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
