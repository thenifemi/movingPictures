// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favoritemovies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavoritemoviesEventTearOff {
  const _$FavoritemoviesEventTearOff();

// ignore: unused_element
  _FavoriteCreated favoriteCreated(MovieSub movieSub) {
    return _FavoriteCreated(
      movieSub,
    );
  }

// ignore: unused_element
  _FavoriteDeleted favoriteDeleted(MovieSub movieSub) {
    return _FavoriteDeleted(
      movieSub,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavoritemoviesEvent = _$FavoritemoviesEventTearOff();

/// @nodoc
mixin _$FavoritemoviesEvent {
  MovieSub get movieSub;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result favoriteCreated(MovieSub movieSub),
    @required Result favoriteDeleted(MovieSub movieSub),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result favoriteCreated(MovieSub movieSub),
    Result favoriteDeleted(MovieSub movieSub),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result favoriteCreated(_FavoriteCreated value),
    @required Result favoriteDeleted(_FavoriteDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result favoriteCreated(_FavoriteCreated value),
    Result favoriteDeleted(_FavoriteDeleted value),
    @required Result orElse(),
  });

  $FavoritemoviesEventCopyWith<FavoritemoviesEvent> get copyWith;
}

/// @nodoc
abstract class $FavoritemoviesEventCopyWith<$Res> {
  factory $FavoritemoviesEventCopyWith(
          FavoritemoviesEvent value, $Res Function(FavoritemoviesEvent) then) =
      _$FavoritemoviesEventCopyWithImpl<$Res>;
  $Res call({MovieSub movieSub});

  $MovieSubCopyWith<$Res> get movieSub;
}

/// @nodoc
class _$FavoritemoviesEventCopyWithImpl<$Res>
    implements $FavoritemoviesEventCopyWith<$Res> {
  _$FavoritemoviesEventCopyWithImpl(this._value, this._then);

  final FavoritemoviesEvent _value;
  // ignore: unused_field
  final $Res Function(FavoritemoviesEvent) _then;

  @override
  $Res call({
    Object movieSub = freezed,
  }) {
    return _then(_value.copyWith(
      movieSub: movieSub == freezed ? _value.movieSub : movieSub as MovieSub,
    ));
  }

  @override
  $MovieSubCopyWith<$Res> get movieSub {
    if (_value.movieSub == null) {
      return null;
    }
    return $MovieSubCopyWith<$Res>(_value.movieSub, (value) {
      return _then(_value.copyWith(movieSub: value));
    });
  }
}

/// @nodoc
abstract class _$FavoriteCreatedCopyWith<$Res>
    implements $FavoritemoviesEventCopyWith<$Res> {
  factory _$FavoriteCreatedCopyWith(
          _FavoriteCreated value, $Res Function(_FavoriteCreated) then) =
      __$FavoriteCreatedCopyWithImpl<$Res>;
  @override
  $Res call({MovieSub movieSub});

  @override
  $MovieSubCopyWith<$Res> get movieSub;
}

/// @nodoc
class __$FavoriteCreatedCopyWithImpl<$Res>
    extends _$FavoritemoviesEventCopyWithImpl<$Res>
    implements _$FavoriteCreatedCopyWith<$Res> {
  __$FavoriteCreatedCopyWithImpl(
      _FavoriteCreated _value, $Res Function(_FavoriteCreated) _then)
      : super(_value, (v) => _then(v as _FavoriteCreated));

  @override
  _FavoriteCreated get _value => super._value as _FavoriteCreated;

  @override
  $Res call({
    Object movieSub = freezed,
  }) {
    return _then(_FavoriteCreated(
      movieSub == freezed ? _value.movieSub : movieSub as MovieSub,
    ));
  }
}

/// @nodoc
class _$_FavoriteCreated implements _FavoriteCreated {
  const _$_FavoriteCreated(this.movieSub) : assert(movieSub != null);

  @override
  final MovieSub movieSub;

  @override
  String toString() {
    return 'FavoritemoviesEvent.favoriteCreated(movieSub: $movieSub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteCreated &&
            (identical(other.movieSub, movieSub) ||
                const DeepCollectionEquality()
                    .equals(other.movieSub, movieSub)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieSub);

  @override
  _$FavoriteCreatedCopyWith<_FavoriteCreated> get copyWith =>
      __$FavoriteCreatedCopyWithImpl<_FavoriteCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result favoriteCreated(MovieSub movieSub),
    @required Result favoriteDeleted(MovieSub movieSub),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    return favoriteCreated(movieSub);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result favoriteCreated(MovieSub movieSub),
    Result favoriteDeleted(MovieSub movieSub),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteCreated != null) {
      return favoriteCreated(movieSub);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result favoriteCreated(_FavoriteCreated value),
    @required Result favoriteDeleted(_FavoriteDeleted value),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    return favoriteCreated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result favoriteCreated(_FavoriteCreated value),
    Result favoriteDeleted(_FavoriteDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteCreated != null) {
      return favoriteCreated(this);
    }
    return orElse();
  }
}

abstract class _FavoriteCreated implements FavoritemoviesEvent {
  const factory _FavoriteCreated(MovieSub movieSub) = _$_FavoriteCreated;

  @override
  MovieSub get movieSub;
  @override
  _$FavoriteCreatedCopyWith<_FavoriteCreated> get copyWith;
}

/// @nodoc
abstract class _$FavoriteDeletedCopyWith<$Res>
    implements $FavoritemoviesEventCopyWith<$Res> {
  factory _$FavoriteDeletedCopyWith(
          _FavoriteDeleted value, $Res Function(_FavoriteDeleted) then) =
      __$FavoriteDeletedCopyWithImpl<$Res>;
  @override
  $Res call({MovieSub movieSub});

  @override
  $MovieSubCopyWith<$Res> get movieSub;
}

/// @nodoc
class __$FavoriteDeletedCopyWithImpl<$Res>
    extends _$FavoritemoviesEventCopyWithImpl<$Res>
    implements _$FavoriteDeletedCopyWith<$Res> {
  __$FavoriteDeletedCopyWithImpl(
      _FavoriteDeleted _value, $Res Function(_FavoriteDeleted) _then)
      : super(_value, (v) => _then(v as _FavoriteDeleted));

  @override
  _FavoriteDeleted get _value => super._value as _FavoriteDeleted;

  @override
  $Res call({
    Object movieSub = freezed,
  }) {
    return _then(_FavoriteDeleted(
      movieSub == freezed ? _value.movieSub : movieSub as MovieSub,
    ));
  }
}

/// @nodoc
class _$_FavoriteDeleted implements _FavoriteDeleted {
  const _$_FavoriteDeleted(this.movieSub) : assert(movieSub != null);

  @override
  final MovieSub movieSub;

  @override
  String toString() {
    return 'FavoritemoviesEvent.favoriteDeleted(movieSub: $movieSub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteDeleted &&
            (identical(other.movieSub, movieSub) ||
                const DeepCollectionEquality()
                    .equals(other.movieSub, movieSub)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieSub);

  @override
  _$FavoriteDeletedCopyWith<_FavoriteDeleted> get copyWith =>
      __$FavoriteDeletedCopyWithImpl<_FavoriteDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result favoriteCreated(MovieSub movieSub),
    @required Result favoriteDeleted(MovieSub movieSub),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    return favoriteDeleted(movieSub);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result favoriteCreated(MovieSub movieSub),
    Result favoriteDeleted(MovieSub movieSub),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteDeleted != null) {
      return favoriteDeleted(movieSub);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result favoriteCreated(_FavoriteCreated value),
    @required Result favoriteDeleted(_FavoriteDeleted value),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    return favoriteDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result favoriteCreated(_FavoriteCreated value),
    Result favoriteDeleted(_FavoriteDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteDeleted != null) {
      return favoriteDeleted(this);
    }
    return orElse();
  }
}

abstract class _FavoriteDeleted implements FavoritemoviesEvent {
  const factory _FavoriteDeleted(MovieSub movieSub) = _$_FavoriteDeleted;

  @override
  MovieSub get movieSub;
  @override
  _$FavoriteDeletedCopyWith<_FavoriteDeleted> get copyWith;
}

/// @nodoc
class _$FavoritemoviesStateTearOff {
  const _$FavoritemoviesStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Failure failure(MovieFailure movieFailure) {
    return _Failure(
      movieFailure,
    );
  }

// ignore: unused_element
  _CreateSuccess createSuccess() {
    return const _CreateSuccess();
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $FavoritemoviesState = _$FavoritemoviesStateTearOff();

/// @nodoc
mixin _$FavoritemoviesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(MovieFailure movieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(MovieFailure movieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result createSuccess(_CreateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FavoritemoviesStateCopyWith<$Res> {
  factory $FavoritemoviesStateCopyWith(
          FavoritemoviesState value, $Res Function(FavoritemoviesState) then) =
      _$FavoritemoviesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritemoviesStateCopyWithImpl<$Res>
    implements $FavoritemoviesStateCopyWith<$Res> {
  _$FavoritemoviesStateCopyWithImpl(this._value, this._then);

  final FavoritemoviesState _value;
  // ignore: unused_field
  final $Res Function(FavoritemoviesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FavoritemoviesStateCopyWithImpl<$Res>
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
    return 'FavoritemoviesState.initial()';
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
    @required Result failure(MovieFailure movieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(MovieFailure movieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
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
    @required Result createSuccess(_CreateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result createSuccess(_CreateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoritemoviesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$FavoritemoviesStateCopyWithImpl<$Res>
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
    return 'FavoritemoviesState.loading()';
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
    @required Result failure(MovieFailure movieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(MovieFailure movieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
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
    @required Result createSuccess(_CreateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result createSuccess(_CreateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavoritemoviesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({MovieFailure movieFailure});

  $MovieFailureCopyWith<$Res> get movieFailure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$FavoritemoviesStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object movieFailure = freezed,
  }) {
    return _then(_Failure(
      movieFailure == freezed
          ? _value.movieFailure
          : movieFailure as MovieFailure,
    ));
  }

  @override
  $MovieFailureCopyWith<$Res> get movieFailure {
    if (_value.movieFailure == null) {
      return null;
    }
    return $MovieFailureCopyWith<$Res>(_value.movieFailure, (value) {
      return _then(_value.copyWith(movieFailure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.movieFailure) : assert(movieFailure != null);

  @override
  final MovieFailure movieFailure;

  @override
  String toString() {
    return 'FavoritemoviesState.failure(movieFailure: $movieFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.movieFailure, movieFailure) ||
                const DeepCollectionEquality()
                    .equals(other.movieFailure, movieFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieFailure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(MovieFailure movieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return failure(movieFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(MovieFailure movieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(movieFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result createSuccess(_CreateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FavoritemoviesState {
  const factory _Failure(MovieFailure movieFailure) = _$_Failure;

  MovieFailure get movieFailure;
  _$FailureCopyWith<_Failure> get copyWith;
}

/// @nodoc
abstract class _$CreateSuccessCopyWith<$Res> {
  factory _$CreateSuccessCopyWith(
          _CreateSuccess value, $Res Function(_CreateSuccess) then) =
      __$CreateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateSuccessCopyWithImpl<$Res>
    extends _$FavoritemoviesStateCopyWithImpl<$Res>
    implements _$CreateSuccessCopyWith<$Res> {
  __$CreateSuccessCopyWithImpl(
      _CreateSuccess _value, $Res Function(_CreateSuccess) _then)
      : super(_value, (v) => _then(v as _CreateSuccess));

  @override
  _CreateSuccess get _value => super._value as _CreateSuccess;
}

/// @nodoc
class _$_CreateSuccess implements _CreateSuccess {
  const _$_CreateSuccess();

  @override
  String toString() {
    return 'FavoritemoviesState.createSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(MovieFailure movieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(MovieFailure movieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createSuccess != null) {
      return createSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result createSuccess(_CreateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements FavoritemoviesState {
  const factory _CreateSuccess() = _$_CreateSuccess;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$FavoritemoviesStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'FavoritemoviesState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(MovieFailure movieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(MovieFailure movieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result createSuccess(_CreateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements FavoritemoviesState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
