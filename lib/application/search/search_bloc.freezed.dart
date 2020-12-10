// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

// ignore: unused_element
  _TrendingCalled trendingCalled() {
    return const _TrendingCalled();
  }

// ignore: unused_element
  _QueryCalled queryCalled(String query) {
    return _QueryCalled(
      query,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result trendingCalled(),
    @required Result queryCalled(String query),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result trendingCalled(),
    Result queryCalled(String query),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result trendingCalled(_TrendingCalled value),
    @required Result queryCalled(_QueryCalled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result trendingCalled(_TrendingCalled value),
    Result queryCalled(_QueryCalled value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$TrendingCalledCopyWith<$Res> {
  factory _$TrendingCalledCopyWith(
          _TrendingCalled value, $Res Function(_TrendingCalled) then) =
      __$TrendingCalledCopyWithImpl<$Res>;
}

/// @nodoc
class __$TrendingCalledCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$TrendingCalledCopyWith<$Res> {
  __$TrendingCalledCopyWithImpl(
      _TrendingCalled _value, $Res Function(_TrendingCalled) _then)
      : super(_value, (v) => _then(v as _TrendingCalled));

  @override
  _TrendingCalled get _value => super._value as _TrendingCalled;
}

/// @nodoc
class _$_TrendingCalled implements _TrendingCalled {
  const _$_TrendingCalled();

  @override
  String toString() {
    return 'SearchEvent.trendingCalled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _TrendingCalled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result trendingCalled(),
    @required Result queryCalled(String query),
  }) {
    assert(trendingCalled != null);
    assert(queryCalled != null);
    return trendingCalled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result trendingCalled(),
    Result queryCalled(String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (trendingCalled != null) {
      return trendingCalled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result trendingCalled(_TrendingCalled value),
    @required Result queryCalled(_QueryCalled value),
  }) {
    assert(trendingCalled != null);
    assert(queryCalled != null);
    return trendingCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result trendingCalled(_TrendingCalled value),
    Result queryCalled(_QueryCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (trendingCalled != null) {
      return trendingCalled(this);
    }
    return orElse();
  }
}

abstract class _TrendingCalled implements SearchEvent {
  const factory _TrendingCalled() = _$_TrendingCalled;
}

/// @nodoc
abstract class _$QueryCalledCopyWith<$Res> {
  factory _$QueryCalledCopyWith(
          _QueryCalled value, $Res Function(_QueryCalled) then) =
      __$QueryCalledCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$QueryCalledCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$QueryCalledCopyWith<$Res> {
  __$QueryCalledCopyWithImpl(
      _QueryCalled _value, $Res Function(_QueryCalled) _then)
      : super(_value, (v) => _then(v as _QueryCalled));

  @override
  _QueryCalled get _value => super._value as _QueryCalled;

  @override
  $Res call({
    Object query = freezed,
  }) {
    return _then(_QueryCalled(
      query == freezed ? _value.query : query as String,
    ));
  }
}

/// @nodoc
class _$_QueryCalled implements _QueryCalled {
  const _$_QueryCalled(this.query) : assert(query != null);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchEvent.queryCalled(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QueryCalled &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @override
  _$QueryCalledCopyWith<_QueryCalled> get copyWith =>
      __$QueryCalledCopyWithImpl<_QueryCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result trendingCalled(),
    @required Result queryCalled(String query),
  }) {
    assert(trendingCalled != null);
    assert(queryCalled != null);
    return queryCalled(query);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result trendingCalled(),
    Result queryCalled(String query),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (queryCalled != null) {
      return queryCalled(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result trendingCalled(_TrendingCalled value),
    @required Result queryCalled(_QueryCalled value),
  }) {
    assert(trendingCalled != null);
    assert(queryCalled != null);
    return queryCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result trendingCalled(_TrendingCalled value),
    Result queryCalled(_QueryCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (queryCalled != null) {
      return queryCalled(this);
    }
    return orElse();
  }
}

abstract class _QueryCalled implements SearchEvent {
  const factory _QueryCalled(String query) = _$_QueryCalled;

  String get query;
  _$QueryCalledCopyWith<_QueryCalled> get copyWith;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Search> moviesOrSeries) {
    return _LoadSuccess(
      moviesOrSeries,
    );
  }

// ignore: unused_element
  _LoadSuccessforQuery loadSuccessforQuery(
      List<Search> moviesOrSeriesorPerson) {
    return _LoadSuccessforQuery(
      moviesOrSeriesorPerson,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(MovieFailure movieFailure) {
    return _LoadFailure(
      movieFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Search> moviesOrSeries),
    @required Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    @required Result loadFailure(MovieFailure movieFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Search> moviesOrSeries),
    Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadSuccessforQuery(_LoadSuccessforQuery value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforQuery(_LoadSuccessforQuery value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
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
    return 'SearchState.initial()';
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
    @required Result loadSuccess(List<Search> moviesOrSeries),
    @required Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Search> moviesOrSeries),
    Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    Result loadFailure(MovieFailure movieFailure),
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
    @required Result loadSuccessforQuery(_LoadSuccessforQuery value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforQuery(_LoadSuccessforQuery value),
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

abstract class _Initial implements SearchState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
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
    return 'SearchState.loading()';
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
    @required Result loadSuccess(List<Search> moviesOrSeries),
    @required Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Search> moviesOrSeries),
    Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    Result loadFailure(MovieFailure movieFailure),
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
    @required Result loadSuccessforQuery(_LoadSuccessforQuery value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforQuery(_LoadSuccessforQuery value),
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

abstract class _Loading implements SearchState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Search> moviesOrSeries});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object moviesOrSeries = freezed,
  }) {
    return _then(_LoadSuccess(
      moviesOrSeries == freezed
          ? _value.moviesOrSeries
          : moviesOrSeries as List<Search>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.moviesOrSeries) : assert(moviesOrSeries != null);

  @override
  final List<Search> moviesOrSeries;

  @override
  String toString() {
    return 'SearchState.loadSuccess(moviesOrSeries: $moviesOrSeries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.moviesOrSeries, moviesOrSeries) ||
                const DeepCollectionEquality()
                    .equals(other.moviesOrSeries, moviesOrSeries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(moviesOrSeries);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Search> moviesOrSeries),
    @required Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return loadSuccess(moviesOrSeries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Search> moviesOrSeries),
    Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(moviesOrSeries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadSuccessforQuery(_LoadSuccessforQuery value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforQuery(_LoadSuccessforQuery value),
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

abstract class _LoadSuccess implements SearchState {
  const factory _LoadSuccess(List<Search> moviesOrSeries) = _$_LoadSuccess;

  List<Search> get moviesOrSeries;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessforQueryCopyWith<$Res> {
  factory _$LoadSuccessforQueryCopyWith(_LoadSuccessforQuery value,
          $Res Function(_LoadSuccessforQuery) then) =
      __$LoadSuccessforQueryCopyWithImpl<$Res>;
  $Res call({List<Search> moviesOrSeriesorPerson});
}

/// @nodoc
class __$LoadSuccessforQueryCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$LoadSuccessforQueryCopyWith<$Res> {
  __$LoadSuccessforQueryCopyWithImpl(
      _LoadSuccessforQuery _value, $Res Function(_LoadSuccessforQuery) _then)
      : super(_value, (v) => _then(v as _LoadSuccessforQuery));

  @override
  _LoadSuccessforQuery get _value => super._value as _LoadSuccessforQuery;

  @override
  $Res call({
    Object moviesOrSeriesorPerson = freezed,
  }) {
    return _then(_LoadSuccessforQuery(
      moviesOrSeriesorPerson == freezed
          ? _value.moviesOrSeriesorPerson
          : moviesOrSeriesorPerson as List<Search>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessforQuery implements _LoadSuccessforQuery {
  const _$_LoadSuccessforQuery(this.moviesOrSeriesorPerson)
      : assert(moviesOrSeriesorPerson != null);

  @override
  final List<Search> moviesOrSeriesorPerson;

  @override
  String toString() {
    return 'SearchState.loadSuccessforQuery(moviesOrSeriesorPerson: $moviesOrSeriesorPerson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessforQuery &&
            (identical(other.moviesOrSeriesorPerson, moviesOrSeriesorPerson) ||
                const DeepCollectionEquality().equals(
                    other.moviesOrSeriesorPerson, moviesOrSeriesorPerson)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(moviesOrSeriesorPerson);

  @override
  _$LoadSuccessforQueryCopyWith<_LoadSuccessforQuery> get copyWith =>
      __$LoadSuccessforQueryCopyWithImpl<_LoadSuccessforQuery>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Search> moviesOrSeries),
    @required Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return loadSuccessforQuery(moviesOrSeriesorPerson);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Search> moviesOrSeries),
    Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessforQuery != null) {
      return loadSuccessforQuery(moviesOrSeriesorPerson);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadSuccessforQuery(_LoadSuccessforQuery value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return loadSuccessforQuery(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforQuery(_LoadSuccessforQuery value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessforQuery != null) {
      return loadSuccessforQuery(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessforQuery implements SearchState {
  const factory _LoadSuccessforQuery(List<Search> moviesOrSeriesorPerson) =
      _$_LoadSuccessforQuery;

  List<Search> get moviesOrSeriesorPerson;
  _$LoadSuccessforQueryCopyWith<_LoadSuccessforQuery> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({MovieFailure movieFailure});

  $MovieFailureCopyWith<$Res> get movieFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object movieFailure = freezed,
  }) {
    return _then(_LoadFailure(
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
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.movieFailure) : assert(movieFailure != null);

  @override
  final MovieFailure movieFailure;

  @override
  String toString() {
    return 'SearchState.loadFailure(movieFailure: $movieFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.movieFailure, movieFailure) ||
                const DeepCollectionEquality()
                    .equals(other.movieFailure, movieFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Search> moviesOrSeries),
    @required Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return loadFailure(movieFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Search> moviesOrSeries),
    Result loadSuccessforQuery(List<Search> moviesOrSeriesorPerson),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(movieFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadSuccessforQuery(_LoadSuccessforQuery value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforQuery != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforQuery(_LoadSuccessforQuery value),
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

abstract class _LoadFailure implements SearchState {
  const factory _LoadFailure(MovieFailure movieFailure) = _$_LoadFailure;

  MovieFailure get movieFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
