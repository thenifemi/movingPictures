// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favoriteseries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavoriteseriesEventTearOff {
  const _$FavoriteseriesEventTearOff();

// ignore: unused_element
  _FavoriteCreated favoriteCreated(int serieId) {
    return _FavoriteCreated(
      serieId,
    );
  }

// ignore: unused_element
  _FavoriteDeleted favoriteDeleted(int serieId) {
    return _FavoriteDeleted(
      serieId,
    );
  }

// ignore: unused_element
  _WatchFavorites watchFavorites() {
    return const _WatchFavorites();
  }

// ignore: unused_element
  _FavoritesRecieved favoritesRecieved(
      Either<SerieFailure, List<FavoriteSerie>> failureOrSeries) {
    return _FavoritesRecieved(
      failureOrSeries,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavoriteseriesEvent = _$FavoriteseriesEventTearOff();

/// @nodoc
mixin _$FavoriteseriesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result favoriteCreated(int serieId),
    @required Result favoriteDeleted(int serieId),
    @required Result watchFavorites(),
    @required
        Result favoritesRecieved(
            Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result favoriteCreated(int serieId),
    Result favoriteDeleted(int serieId),
    Result watchFavorites(),
    Result favoritesRecieved(
        Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result favoriteCreated(_FavoriteCreated value),
    @required Result favoriteDeleted(_FavoriteDeleted value),
    @required Result watchFavorites(_WatchFavorites value),
    @required Result favoritesRecieved(_FavoritesRecieved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result favoriteCreated(_FavoriteCreated value),
    Result favoriteDeleted(_FavoriteDeleted value),
    Result watchFavorites(_WatchFavorites value),
    Result favoritesRecieved(_FavoritesRecieved value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FavoriteseriesEventCopyWith<$Res> {
  factory $FavoriteseriesEventCopyWith(
          FavoriteseriesEvent value, $Res Function(FavoriteseriesEvent) then) =
      _$FavoriteseriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteseriesEventCopyWithImpl<$Res>
    implements $FavoriteseriesEventCopyWith<$Res> {
  _$FavoriteseriesEventCopyWithImpl(this._value, this._then);

  final FavoriteseriesEvent _value;
  // ignore: unused_field
  final $Res Function(FavoriteseriesEvent) _then;
}

/// @nodoc
abstract class _$FavoriteCreatedCopyWith<$Res> {
  factory _$FavoriteCreatedCopyWith(
          _FavoriteCreated value, $Res Function(_FavoriteCreated) then) =
      __$FavoriteCreatedCopyWithImpl<$Res>;
  $Res call({int serieId});
}

/// @nodoc
class __$FavoriteCreatedCopyWithImpl<$Res>
    extends _$FavoriteseriesEventCopyWithImpl<$Res>
    implements _$FavoriteCreatedCopyWith<$Res> {
  __$FavoriteCreatedCopyWithImpl(
      _FavoriteCreated _value, $Res Function(_FavoriteCreated) _then)
      : super(_value, (v) => _then(v as _FavoriteCreated));

  @override
  _FavoriteCreated get _value => super._value as _FavoriteCreated;

  @override
  $Res call({
    Object serieId = freezed,
  }) {
    return _then(_FavoriteCreated(
      serieId == freezed ? _value.serieId : serieId as int,
    ));
  }
}

/// @nodoc
class _$_FavoriteCreated implements _FavoriteCreated {
  const _$_FavoriteCreated(this.serieId) : assert(serieId != null);

  @override
  final int serieId;

  @override
  String toString() {
    return 'FavoriteseriesEvent.favoriteCreated(serieId: $serieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteCreated &&
            (identical(other.serieId, serieId) ||
                const DeepCollectionEquality().equals(other.serieId, serieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serieId);

  @override
  _$FavoriteCreatedCopyWith<_FavoriteCreated> get copyWith =>
      __$FavoriteCreatedCopyWithImpl<_FavoriteCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result favoriteCreated(int serieId),
    @required Result favoriteDeleted(int serieId),
    @required Result watchFavorites(),
    @required
        Result favoritesRecieved(
            Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    assert(watchFavorites != null);
    assert(favoritesRecieved != null);
    return favoriteCreated(serieId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result favoriteCreated(int serieId),
    Result favoriteDeleted(int serieId),
    Result watchFavorites(),
    Result favoritesRecieved(
        Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteCreated != null) {
      return favoriteCreated(serieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result favoriteCreated(_FavoriteCreated value),
    @required Result favoriteDeleted(_FavoriteDeleted value),
    @required Result watchFavorites(_WatchFavorites value),
    @required Result favoritesRecieved(_FavoritesRecieved value),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    assert(watchFavorites != null);
    assert(favoritesRecieved != null);
    return favoriteCreated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result favoriteCreated(_FavoriteCreated value),
    Result favoriteDeleted(_FavoriteDeleted value),
    Result watchFavorites(_WatchFavorites value),
    Result favoritesRecieved(_FavoritesRecieved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteCreated != null) {
      return favoriteCreated(this);
    }
    return orElse();
  }
}

abstract class _FavoriteCreated implements FavoriteseriesEvent {
  const factory _FavoriteCreated(int serieId) = _$_FavoriteCreated;

  int get serieId;
  _$FavoriteCreatedCopyWith<_FavoriteCreated> get copyWith;
}

/// @nodoc
abstract class _$FavoriteDeletedCopyWith<$Res> {
  factory _$FavoriteDeletedCopyWith(
          _FavoriteDeleted value, $Res Function(_FavoriteDeleted) then) =
      __$FavoriteDeletedCopyWithImpl<$Res>;
  $Res call({int serieId});
}

/// @nodoc
class __$FavoriteDeletedCopyWithImpl<$Res>
    extends _$FavoriteseriesEventCopyWithImpl<$Res>
    implements _$FavoriteDeletedCopyWith<$Res> {
  __$FavoriteDeletedCopyWithImpl(
      _FavoriteDeleted _value, $Res Function(_FavoriteDeleted) _then)
      : super(_value, (v) => _then(v as _FavoriteDeleted));

  @override
  _FavoriteDeleted get _value => super._value as _FavoriteDeleted;

  @override
  $Res call({
    Object serieId = freezed,
  }) {
    return _then(_FavoriteDeleted(
      serieId == freezed ? _value.serieId : serieId as int,
    ));
  }
}

/// @nodoc
class _$_FavoriteDeleted implements _FavoriteDeleted {
  const _$_FavoriteDeleted(this.serieId) : assert(serieId != null);

  @override
  final int serieId;

  @override
  String toString() {
    return 'FavoriteseriesEvent.favoriteDeleted(serieId: $serieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteDeleted &&
            (identical(other.serieId, serieId) ||
                const DeepCollectionEquality().equals(other.serieId, serieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serieId);

  @override
  _$FavoriteDeletedCopyWith<_FavoriteDeleted> get copyWith =>
      __$FavoriteDeletedCopyWithImpl<_FavoriteDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result favoriteCreated(int serieId),
    @required Result favoriteDeleted(int serieId),
    @required Result watchFavorites(),
    @required
        Result favoritesRecieved(
            Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    assert(watchFavorites != null);
    assert(favoritesRecieved != null);
    return favoriteDeleted(serieId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result favoriteCreated(int serieId),
    Result favoriteDeleted(int serieId),
    Result watchFavorites(),
    Result favoritesRecieved(
        Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteDeleted != null) {
      return favoriteDeleted(serieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result favoriteCreated(_FavoriteCreated value),
    @required Result favoriteDeleted(_FavoriteDeleted value),
    @required Result watchFavorites(_WatchFavorites value),
    @required Result favoritesRecieved(_FavoritesRecieved value),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    assert(watchFavorites != null);
    assert(favoritesRecieved != null);
    return favoriteDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result favoriteCreated(_FavoriteCreated value),
    Result favoriteDeleted(_FavoriteDeleted value),
    Result watchFavorites(_WatchFavorites value),
    Result favoritesRecieved(_FavoritesRecieved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoriteDeleted != null) {
      return favoriteDeleted(this);
    }
    return orElse();
  }
}

abstract class _FavoriteDeleted implements FavoriteseriesEvent {
  const factory _FavoriteDeleted(int serieId) = _$_FavoriteDeleted;

  int get serieId;
  _$FavoriteDeletedCopyWith<_FavoriteDeleted> get copyWith;
}

/// @nodoc
abstract class _$WatchFavoritesCopyWith<$Res> {
  factory _$WatchFavoritesCopyWith(
          _WatchFavorites value, $Res Function(_WatchFavorites) then) =
      __$WatchFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchFavoritesCopyWithImpl<$Res>
    extends _$FavoriteseriesEventCopyWithImpl<$Res>
    implements _$WatchFavoritesCopyWith<$Res> {
  __$WatchFavoritesCopyWithImpl(
      _WatchFavorites _value, $Res Function(_WatchFavorites) _then)
      : super(_value, (v) => _then(v as _WatchFavorites));

  @override
  _WatchFavorites get _value => super._value as _WatchFavorites;
}

/// @nodoc
class _$_WatchFavorites implements _WatchFavorites {
  const _$_WatchFavorites();

  @override
  String toString() {
    return 'FavoriteseriesEvent.watchFavorites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result favoriteCreated(int serieId),
    @required Result favoriteDeleted(int serieId),
    @required Result watchFavorites(),
    @required
        Result favoritesRecieved(
            Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    assert(watchFavorites != null);
    assert(favoritesRecieved != null);
    return watchFavorites();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result favoriteCreated(int serieId),
    Result favoriteDeleted(int serieId),
    Result watchFavorites(),
    Result favoritesRecieved(
        Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFavorites != null) {
      return watchFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result favoriteCreated(_FavoriteCreated value),
    @required Result favoriteDeleted(_FavoriteDeleted value),
    @required Result watchFavorites(_WatchFavorites value),
    @required Result favoritesRecieved(_FavoritesRecieved value),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    assert(watchFavorites != null);
    assert(favoritesRecieved != null);
    return watchFavorites(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result favoriteCreated(_FavoriteCreated value),
    Result favoriteDeleted(_FavoriteDeleted value),
    Result watchFavorites(_WatchFavorites value),
    Result favoritesRecieved(_FavoritesRecieved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchFavorites != null) {
      return watchFavorites(this);
    }
    return orElse();
  }
}

abstract class _WatchFavorites implements FavoriteseriesEvent {
  const factory _WatchFavorites() = _$_WatchFavorites;
}

/// @nodoc
abstract class _$FavoritesRecievedCopyWith<$Res> {
  factory _$FavoritesRecievedCopyWith(
          _FavoritesRecieved value, $Res Function(_FavoritesRecieved) then) =
      __$FavoritesRecievedCopyWithImpl<$Res>;
  $Res call({Either<SerieFailure, List<FavoriteSerie>> failureOrSeries});
}

/// @nodoc
class __$FavoritesRecievedCopyWithImpl<$Res>
    extends _$FavoriteseriesEventCopyWithImpl<$Res>
    implements _$FavoritesRecievedCopyWith<$Res> {
  __$FavoritesRecievedCopyWithImpl(
      _FavoritesRecieved _value, $Res Function(_FavoritesRecieved) _then)
      : super(_value, (v) => _then(v as _FavoritesRecieved));

  @override
  _FavoritesRecieved get _value => super._value as _FavoritesRecieved;

  @override
  $Res call({
    Object failureOrSeries = freezed,
  }) {
    return _then(_FavoritesRecieved(
      failureOrSeries == freezed
          ? _value.failureOrSeries
          : failureOrSeries as Either<SerieFailure, List<FavoriteSerie>>,
    ));
  }
}

/// @nodoc
class _$_FavoritesRecieved implements _FavoritesRecieved {
  const _$_FavoritesRecieved(this.failureOrSeries)
      : assert(failureOrSeries != null);

  @override
  final Either<SerieFailure, List<FavoriteSerie>> failureOrSeries;

  @override
  String toString() {
    return 'FavoriteseriesEvent.favoritesRecieved(failureOrSeries: $failureOrSeries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoritesRecieved &&
            (identical(other.failureOrSeries, failureOrSeries) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSeries, failureOrSeries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrSeries);

  @override
  _$FavoritesRecievedCopyWith<_FavoritesRecieved> get copyWith =>
      __$FavoritesRecievedCopyWithImpl<_FavoritesRecieved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result favoriteCreated(int serieId),
    @required Result favoriteDeleted(int serieId),
    @required Result watchFavorites(),
    @required
        Result favoritesRecieved(
            Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    assert(watchFavorites != null);
    assert(favoritesRecieved != null);
    return favoritesRecieved(failureOrSeries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result favoriteCreated(int serieId),
    Result favoriteDeleted(int serieId),
    Result watchFavorites(),
    Result favoritesRecieved(
        Either<SerieFailure, List<FavoriteSerie>> failureOrSeries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoritesRecieved != null) {
      return favoritesRecieved(failureOrSeries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result favoriteCreated(_FavoriteCreated value),
    @required Result favoriteDeleted(_FavoriteDeleted value),
    @required Result watchFavorites(_WatchFavorites value),
    @required Result favoritesRecieved(_FavoritesRecieved value),
  }) {
    assert(favoriteCreated != null);
    assert(favoriteDeleted != null);
    assert(watchFavorites != null);
    assert(favoritesRecieved != null);
    return favoritesRecieved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result favoriteCreated(_FavoriteCreated value),
    Result favoriteDeleted(_FavoriteDeleted value),
    Result watchFavorites(_WatchFavorites value),
    Result favoritesRecieved(_FavoritesRecieved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (favoritesRecieved != null) {
      return favoritesRecieved(this);
    }
    return orElse();
  }
}

abstract class _FavoritesRecieved implements FavoriteseriesEvent {
  const factory _FavoritesRecieved(
          Either<SerieFailure, List<FavoriteSerie>> failureOrSeries) =
      _$_FavoritesRecieved;

  Either<SerieFailure, List<FavoriteSerie>> get failureOrSeries;
  _$FavoritesRecievedCopyWith<_FavoritesRecieved> get copyWith;
}

/// @nodoc
class _$FavoriteseriesStateTearOff {
  const _$FavoriteseriesStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Failure failure(SerieFailure serieFailure) {
    return _Failure(
      serieFailure,
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

// ignore: unused_element
  _WatchSuccess watchSuccess(List<FavoriteSerie> favoriteSeries) {
    return _WatchSuccess(
      favoriteSeries,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavoriteseriesState = _$FavoriteseriesStateTearOff();

/// @nodoc
mixin _$FavoriteseriesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(SerieFailure serieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
    @required Result watchSuccess(List<FavoriteSerie> favoriteSeries),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(SerieFailure serieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    Result watchSuccess(List<FavoriteSerie> favoriteSeries),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result failure(_Failure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
    @required Result watchSuccess(_WatchSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result createSuccess(_CreateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    Result watchSuccess(_WatchSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $FavoriteseriesStateCopyWith<$Res> {
  factory $FavoriteseriesStateCopyWith(
          FavoriteseriesState value, $Res Function(FavoriteseriesState) then) =
      _$FavoriteseriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteseriesStateCopyWithImpl<$Res>
    implements $FavoriteseriesStateCopyWith<$Res> {
  _$FavoriteseriesStateCopyWithImpl(this._value, this._then);

  final FavoriteseriesState _value;
  // ignore: unused_field
  final $Res Function(FavoriteseriesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FavoriteseriesStateCopyWithImpl<$Res>
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
    return 'FavoriteseriesState.initial()';
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
    @required Result failure(SerieFailure serieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
    @required Result watchSuccess(List<FavoriteSerie> favoriteSeries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(SerieFailure serieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    Result watchSuccess(List<FavoriteSerie> favoriteSeries),
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
    @required Result watchSuccess(_WatchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
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
    Result watchSuccess(_WatchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoriteseriesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$FavoriteseriesStateCopyWithImpl<$Res>
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
    return 'FavoriteseriesState.loading()';
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
    @required Result failure(SerieFailure serieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
    @required Result watchSuccess(List<FavoriteSerie> favoriteSeries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(SerieFailure serieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    Result watchSuccess(List<FavoriteSerie> favoriteSeries),
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
    @required Result watchSuccess(_WatchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
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
    Result watchSuccess(_WatchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements FavoriteseriesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({SerieFailure serieFailure});

  $SerieFailureCopyWith<$Res> get serieFailure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$FavoriteseriesStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object serieFailure = freezed,
  }) {
    return _then(_Failure(
      serieFailure == freezed
          ? _value.serieFailure
          : serieFailure as SerieFailure,
    ));
  }

  @override
  $SerieFailureCopyWith<$Res> get serieFailure {
    if (_value.serieFailure == null) {
      return null;
    }
    return $SerieFailureCopyWith<$Res>(_value.serieFailure, (value) {
      return _then(_value.copyWith(serieFailure: value));
    });
  }
}

/// @nodoc
class _$_Failure implements _Failure {
  const _$_Failure(this.serieFailure) : assert(serieFailure != null);

  @override
  final SerieFailure serieFailure;

  @override
  String toString() {
    return 'FavoriteseriesState.failure(serieFailure: $serieFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.serieFailure, serieFailure) ||
                const DeepCollectionEquality()
                    .equals(other.serieFailure, serieFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serieFailure);

  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(SerieFailure serieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
    @required Result watchSuccess(List<FavoriteSerie> favoriteSeries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
    return failure(serieFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(SerieFailure serieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    Result watchSuccess(List<FavoriteSerie> favoriteSeries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(serieFailure);
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
    @required Result watchSuccess(_WatchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
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
    Result watchSuccess(_WatchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements FavoriteseriesState {
  const factory _Failure(SerieFailure serieFailure) = _$_Failure;

  SerieFailure get serieFailure;
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
    extends _$FavoriteseriesStateCopyWithImpl<$Res>
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
    return 'FavoriteseriesState.createSuccess()';
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
    @required Result failure(SerieFailure serieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
    @required Result watchSuccess(List<FavoriteSerie> favoriteSeries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(SerieFailure serieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    Result watchSuccess(List<FavoriteSerie> favoriteSeries),
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
    @required Result watchSuccess(_WatchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
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
    Result watchSuccess(_WatchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements FavoriteseriesState {
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
    extends _$FavoriteseriesStateCopyWithImpl<$Res>
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
    return 'FavoriteseriesState.deleteSuccess()';
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
    @required Result failure(SerieFailure serieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
    @required Result watchSuccess(List<FavoriteSerie> favoriteSeries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(SerieFailure serieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    Result watchSuccess(List<FavoriteSerie> favoriteSeries),
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
    @required Result watchSuccess(_WatchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
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
    Result watchSuccess(_WatchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements FavoriteseriesState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}

/// @nodoc
abstract class _$WatchSuccessCopyWith<$Res> {
  factory _$WatchSuccessCopyWith(
          _WatchSuccess value, $Res Function(_WatchSuccess) then) =
      __$WatchSuccessCopyWithImpl<$Res>;
  $Res call({List<FavoriteSerie> favoriteSeries});
}

/// @nodoc
class __$WatchSuccessCopyWithImpl<$Res>
    extends _$FavoriteseriesStateCopyWithImpl<$Res>
    implements _$WatchSuccessCopyWith<$Res> {
  __$WatchSuccessCopyWithImpl(
      _WatchSuccess _value, $Res Function(_WatchSuccess) _then)
      : super(_value, (v) => _then(v as _WatchSuccess));

  @override
  _WatchSuccess get _value => super._value as _WatchSuccess;

  @override
  $Res call({
    Object favoriteSeries = freezed,
  }) {
    return _then(_WatchSuccess(
      favoriteSeries == freezed
          ? _value.favoriteSeries
          : favoriteSeries as List<FavoriteSerie>,
    ));
  }
}

/// @nodoc
class _$_WatchSuccess implements _WatchSuccess {
  const _$_WatchSuccess(this.favoriteSeries) : assert(favoriteSeries != null);

  @override
  final List<FavoriteSerie> favoriteSeries;

  @override
  String toString() {
    return 'FavoriteseriesState.watchSuccess(favoriteSeries: $favoriteSeries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchSuccess &&
            (identical(other.favoriteSeries, favoriteSeries) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteSeries, favoriteSeries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(favoriteSeries);

  @override
  _$WatchSuccessCopyWith<_WatchSuccess> get copyWith =>
      __$WatchSuccessCopyWithImpl<_WatchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result failure(SerieFailure serieFailure),
    @required Result createSuccess(),
    @required Result deleteSuccess(),
    @required Result watchSuccess(List<FavoriteSerie> favoriteSeries),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
    return watchSuccess(favoriteSeries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result failure(SerieFailure serieFailure),
    Result createSuccess(),
    Result deleteSuccess(),
    Result watchSuccess(List<FavoriteSerie> favoriteSeries),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSuccess != null) {
      return watchSuccess(favoriteSeries);
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
    @required Result watchSuccess(_WatchSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(failure != null);
    assert(createSuccess != null);
    assert(deleteSuccess != null);
    assert(watchSuccess != null);
    return watchSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result failure(_Failure value),
    Result createSuccess(_CreateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    Result watchSuccess(_WatchSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchSuccess != null) {
      return watchSuccess(this);
    }
    return orElse();
  }
}

abstract class _WatchSuccess implements FavoriteseriesState {
  const factory _WatchSuccess(List<FavoriteSerie> favoriteSeries) =
      _$_WatchSuccess;

  List<FavoriteSerie> get favoriteSeries;
  _$WatchSuccessCopyWith<_WatchSuccess> get copyWith;
}
