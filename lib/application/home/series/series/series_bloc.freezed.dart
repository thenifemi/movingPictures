// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'series_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SeriesEventTearOff {
  const _$SeriesEventTearOff();

// ignore: unused_element
  _SerieTypeCalled serieTypeCalled(String serieListType) {
    return _SerieTypeCalled(
      serieListType,
    );
  }

// ignore: unused_element
  _SerieByGenreCalled serieByGenreCalled(int serieGenreId) {
    return _SerieByGenreCalled(
      serieGenreId,
    );
  }

// ignore: unused_element
  _SimilarSeriesCalled similarSeriesCalled(int serieId) {
    return _SimilarSeriesCalled(
      serieId,
    );
  }

// ignore: unused_element
  _SerieCalled serieCalled(int serieId) {
    return _SerieCalled(
      serieId,
    );
  }

// ignore: unused_element
  _SerieByCastIdCalled serieByCastIdCalled(int castId) {
    return _SerieByCastIdCalled(
      castId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SeriesEvent = _$SeriesEventTearOff();

/// @nodoc
mixin _$SeriesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serieTypeCalled(String serieListType),
    @required Result serieByGenreCalled(int serieGenreId),
    @required Result similarSeriesCalled(int serieId),
    @required Result serieCalled(int serieId),
    @required Result serieByCastIdCalled(int castId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serieTypeCalled(String serieListType),
    Result serieByGenreCalled(int serieGenreId),
    Result similarSeriesCalled(int serieId),
    Result serieCalled(int serieId),
    Result serieByCastIdCalled(int castId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serieTypeCalled(_SerieTypeCalled value),
    @required Result serieByGenreCalled(_SerieByGenreCalled value),
    @required Result similarSeriesCalled(_SimilarSeriesCalled value),
    @required Result serieCalled(_SerieCalled value),
    @required Result serieByCastIdCalled(_SerieByCastIdCalled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serieTypeCalled(_SerieTypeCalled value),
    Result serieByGenreCalled(_SerieByGenreCalled value),
    Result similarSeriesCalled(_SimilarSeriesCalled value),
    Result serieCalled(_SerieCalled value),
    Result serieByCastIdCalled(_SerieByCastIdCalled value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SeriesEventCopyWith<$Res> {
  factory $SeriesEventCopyWith(
          SeriesEvent value, $Res Function(SeriesEvent) then) =
      _$SeriesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeriesEventCopyWithImpl<$Res> implements $SeriesEventCopyWith<$Res> {
  _$SeriesEventCopyWithImpl(this._value, this._then);

  final SeriesEvent _value;
  // ignore: unused_field
  final $Res Function(SeriesEvent) _then;
}

/// @nodoc
abstract class _$SerieTypeCalledCopyWith<$Res> {
  factory _$SerieTypeCalledCopyWith(
          _SerieTypeCalled value, $Res Function(_SerieTypeCalled) then) =
      __$SerieTypeCalledCopyWithImpl<$Res>;
  $Res call({String serieListType});
}

/// @nodoc
class __$SerieTypeCalledCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements _$SerieTypeCalledCopyWith<$Res> {
  __$SerieTypeCalledCopyWithImpl(
      _SerieTypeCalled _value, $Res Function(_SerieTypeCalled) _then)
      : super(_value, (v) => _then(v as _SerieTypeCalled));

  @override
  _SerieTypeCalled get _value => super._value as _SerieTypeCalled;

  @override
  $Res call({
    Object serieListType = freezed,
  }) {
    return _then(_SerieTypeCalled(
      serieListType == freezed ? _value.serieListType : serieListType as String,
    ));
  }
}

/// @nodoc
class _$_SerieTypeCalled implements _SerieTypeCalled {
  const _$_SerieTypeCalled(this.serieListType) : assert(serieListType != null);

  @override
  final String serieListType;

  @override
  String toString() {
    return 'SeriesEvent.serieTypeCalled(serieListType: $serieListType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SerieTypeCalled &&
            (identical(other.serieListType, serieListType) ||
                const DeepCollectionEquality()
                    .equals(other.serieListType, serieListType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serieListType);

  @override
  _$SerieTypeCalledCopyWith<_SerieTypeCalled> get copyWith =>
      __$SerieTypeCalledCopyWithImpl<_SerieTypeCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serieTypeCalled(String serieListType),
    @required Result serieByGenreCalled(int serieGenreId),
    @required Result similarSeriesCalled(int serieId),
    @required Result serieCalled(int serieId),
    @required Result serieByCastIdCalled(int castId),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return serieTypeCalled(serieListType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serieTypeCalled(String serieListType),
    Result serieByGenreCalled(int serieGenreId),
    Result similarSeriesCalled(int serieId),
    Result serieCalled(int serieId),
    Result serieByCastIdCalled(int castId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serieTypeCalled != null) {
      return serieTypeCalled(serieListType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serieTypeCalled(_SerieTypeCalled value),
    @required Result serieByGenreCalled(_SerieByGenreCalled value),
    @required Result similarSeriesCalled(_SimilarSeriesCalled value),
    @required Result serieCalled(_SerieCalled value),
    @required Result serieByCastIdCalled(_SerieByCastIdCalled value),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return serieTypeCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serieTypeCalled(_SerieTypeCalled value),
    Result serieByGenreCalled(_SerieByGenreCalled value),
    Result similarSeriesCalled(_SimilarSeriesCalled value),
    Result serieCalled(_SerieCalled value),
    Result serieByCastIdCalled(_SerieByCastIdCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serieTypeCalled != null) {
      return serieTypeCalled(this);
    }
    return orElse();
  }
}

abstract class _SerieTypeCalled implements SeriesEvent {
  const factory _SerieTypeCalled(String serieListType) = _$_SerieTypeCalled;

  String get serieListType;
  _$SerieTypeCalledCopyWith<_SerieTypeCalled> get copyWith;
}

/// @nodoc
abstract class _$SerieByGenreCalledCopyWith<$Res> {
  factory _$SerieByGenreCalledCopyWith(
          _SerieByGenreCalled value, $Res Function(_SerieByGenreCalled) then) =
      __$SerieByGenreCalledCopyWithImpl<$Res>;
  $Res call({int serieGenreId});
}

/// @nodoc
class __$SerieByGenreCalledCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements _$SerieByGenreCalledCopyWith<$Res> {
  __$SerieByGenreCalledCopyWithImpl(
      _SerieByGenreCalled _value, $Res Function(_SerieByGenreCalled) _then)
      : super(_value, (v) => _then(v as _SerieByGenreCalled));

  @override
  _SerieByGenreCalled get _value => super._value as _SerieByGenreCalled;

  @override
  $Res call({
    Object serieGenreId = freezed,
  }) {
    return _then(_SerieByGenreCalled(
      serieGenreId == freezed ? _value.serieGenreId : serieGenreId as int,
    ));
  }
}

/// @nodoc
class _$_SerieByGenreCalled implements _SerieByGenreCalled {
  const _$_SerieByGenreCalled(this.serieGenreId) : assert(serieGenreId != null);

  @override
  final int serieGenreId;

  @override
  String toString() {
    return 'SeriesEvent.serieByGenreCalled(serieGenreId: $serieGenreId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SerieByGenreCalled &&
            (identical(other.serieGenreId, serieGenreId) ||
                const DeepCollectionEquality()
                    .equals(other.serieGenreId, serieGenreId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serieGenreId);

  @override
  _$SerieByGenreCalledCopyWith<_SerieByGenreCalled> get copyWith =>
      __$SerieByGenreCalledCopyWithImpl<_SerieByGenreCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serieTypeCalled(String serieListType),
    @required Result serieByGenreCalled(int serieGenreId),
    @required Result similarSeriesCalled(int serieId),
    @required Result serieCalled(int serieId),
    @required Result serieByCastIdCalled(int castId),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return serieByGenreCalled(serieGenreId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serieTypeCalled(String serieListType),
    Result serieByGenreCalled(int serieGenreId),
    Result similarSeriesCalled(int serieId),
    Result serieCalled(int serieId),
    Result serieByCastIdCalled(int castId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serieByGenreCalled != null) {
      return serieByGenreCalled(serieGenreId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serieTypeCalled(_SerieTypeCalled value),
    @required Result serieByGenreCalled(_SerieByGenreCalled value),
    @required Result similarSeriesCalled(_SimilarSeriesCalled value),
    @required Result serieCalled(_SerieCalled value),
    @required Result serieByCastIdCalled(_SerieByCastIdCalled value),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return serieByGenreCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serieTypeCalled(_SerieTypeCalled value),
    Result serieByGenreCalled(_SerieByGenreCalled value),
    Result similarSeriesCalled(_SimilarSeriesCalled value),
    Result serieCalled(_SerieCalled value),
    Result serieByCastIdCalled(_SerieByCastIdCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serieByGenreCalled != null) {
      return serieByGenreCalled(this);
    }
    return orElse();
  }
}

abstract class _SerieByGenreCalled implements SeriesEvent {
  const factory _SerieByGenreCalled(int serieGenreId) = _$_SerieByGenreCalled;

  int get serieGenreId;
  _$SerieByGenreCalledCopyWith<_SerieByGenreCalled> get copyWith;
}

/// @nodoc
abstract class _$SimilarSeriesCalledCopyWith<$Res> {
  factory _$SimilarSeriesCalledCopyWith(_SimilarSeriesCalled value,
          $Res Function(_SimilarSeriesCalled) then) =
      __$SimilarSeriesCalledCopyWithImpl<$Res>;
  $Res call({int serieId});
}

/// @nodoc
class __$SimilarSeriesCalledCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements _$SimilarSeriesCalledCopyWith<$Res> {
  __$SimilarSeriesCalledCopyWithImpl(
      _SimilarSeriesCalled _value, $Res Function(_SimilarSeriesCalled) _then)
      : super(_value, (v) => _then(v as _SimilarSeriesCalled));

  @override
  _SimilarSeriesCalled get _value => super._value as _SimilarSeriesCalled;

  @override
  $Res call({
    Object serieId = freezed,
  }) {
    return _then(_SimilarSeriesCalled(
      serieId == freezed ? _value.serieId : serieId as int,
    ));
  }
}

/// @nodoc
class _$_SimilarSeriesCalled implements _SimilarSeriesCalled {
  const _$_SimilarSeriesCalled(this.serieId) : assert(serieId != null);

  @override
  final int serieId;

  @override
  String toString() {
    return 'SeriesEvent.similarSeriesCalled(serieId: $serieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimilarSeriesCalled &&
            (identical(other.serieId, serieId) ||
                const DeepCollectionEquality().equals(other.serieId, serieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serieId);

  @override
  _$SimilarSeriesCalledCopyWith<_SimilarSeriesCalled> get copyWith =>
      __$SimilarSeriesCalledCopyWithImpl<_SimilarSeriesCalled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serieTypeCalled(String serieListType),
    @required Result serieByGenreCalled(int serieGenreId),
    @required Result similarSeriesCalled(int serieId),
    @required Result serieCalled(int serieId),
    @required Result serieByCastIdCalled(int castId),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return similarSeriesCalled(serieId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serieTypeCalled(String serieListType),
    Result serieByGenreCalled(int serieGenreId),
    Result similarSeriesCalled(int serieId),
    Result serieCalled(int serieId),
    Result serieByCastIdCalled(int castId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (similarSeriesCalled != null) {
      return similarSeriesCalled(serieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serieTypeCalled(_SerieTypeCalled value),
    @required Result serieByGenreCalled(_SerieByGenreCalled value),
    @required Result similarSeriesCalled(_SimilarSeriesCalled value),
    @required Result serieCalled(_SerieCalled value),
    @required Result serieByCastIdCalled(_SerieByCastIdCalled value),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return similarSeriesCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serieTypeCalled(_SerieTypeCalled value),
    Result serieByGenreCalled(_SerieByGenreCalled value),
    Result similarSeriesCalled(_SimilarSeriesCalled value),
    Result serieCalled(_SerieCalled value),
    Result serieByCastIdCalled(_SerieByCastIdCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (similarSeriesCalled != null) {
      return similarSeriesCalled(this);
    }
    return orElse();
  }
}

abstract class _SimilarSeriesCalled implements SeriesEvent {
  const factory _SimilarSeriesCalled(int serieId) = _$_SimilarSeriesCalled;

  int get serieId;
  _$SimilarSeriesCalledCopyWith<_SimilarSeriesCalled> get copyWith;
}

/// @nodoc
abstract class _$SerieCalledCopyWith<$Res> {
  factory _$SerieCalledCopyWith(
          _SerieCalled value, $Res Function(_SerieCalled) then) =
      __$SerieCalledCopyWithImpl<$Res>;
  $Res call({int serieId});
}

/// @nodoc
class __$SerieCalledCopyWithImpl<$Res> extends _$SeriesEventCopyWithImpl<$Res>
    implements _$SerieCalledCopyWith<$Res> {
  __$SerieCalledCopyWithImpl(
      _SerieCalled _value, $Res Function(_SerieCalled) _then)
      : super(_value, (v) => _then(v as _SerieCalled));

  @override
  _SerieCalled get _value => super._value as _SerieCalled;

  @override
  $Res call({
    Object serieId = freezed,
  }) {
    return _then(_SerieCalled(
      serieId == freezed ? _value.serieId : serieId as int,
    ));
  }
}

/// @nodoc
class _$_SerieCalled implements _SerieCalled {
  const _$_SerieCalled(this.serieId) : assert(serieId != null);

  @override
  final int serieId;

  @override
  String toString() {
    return 'SeriesEvent.serieCalled(serieId: $serieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SerieCalled &&
            (identical(other.serieId, serieId) ||
                const DeepCollectionEquality().equals(other.serieId, serieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serieId);

  @override
  _$SerieCalledCopyWith<_SerieCalled> get copyWith =>
      __$SerieCalledCopyWithImpl<_SerieCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serieTypeCalled(String serieListType),
    @required Result serieByGenreCalled(int serieGenreId),
    @required Result similarSeriesCalled(int serieId),
    @required Result serieCalled(int serieId),
    @required Result serieByCastIdCalled(int castId),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return serieCalled(serieId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serieTypeCalled(String serieListType),
    Result serieByGenreCalled(int serieGenreId),
    Result similarSeriesCalled(int serieId),
    Result serieCalled(int serieId),
    Result serieByCastIdCalled(int castId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serieCalled != null) {
      return serieCalled(serieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serieTypeCalled(_SerieTypeCalled value),
    @required Result serieByGenreCalled(_SerieByGenreCalled value),
    @required Result similarSeriesCalled(_SimilarSeriesCalled value),
    @required Result serieCalled(_SerieCalled value),
    @required Result serieByCastIdCalled(_SerieByCastIdCalled value),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return serieCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serieTypeCalled(_SerieTypeCalled value),
    Result serieByGenreCalled(_SerieByGenreCalled value),
    Result similarSeriesCalled(_SimilarSeriesCalled value),
    Result serieCalled(_SerieCalled value),
    Result serieByCastIdCalled(_SerieByCastIdCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serieCalled != null) {
      return serieCalled(this);
    }
    return orElse();
  }
}

abstract class _SerieCalled implements SeriesEvent {
  const factory _SerieCalled(int serieId) = _$_SerieCalled;

  int get serieId;
  _$SerieCalledCopyWith<_SerieCalled> get copyWith;
}

/// @nodoc
abstract class _$SerieByCastIdCalledCopyWith<$Res> {
  factory _$SerieByCastIdCalledCopyWith(_SerieByCastIdCalled value,
          $Res Function(_SerieByCastIdCalled) then) =
      __$SerieByCastIdCalledCopyWithImpl<$Res>;
  $Res call({int castId});
}

/// @nodoc
class __$SerieByCastIdCalledCopyWithImpl<$Res>
    extends _$SeriesEventCopyWithImpl<$Res>
    implements _$SerieByCastIdCalledCopyWith<$Res> {
  __$SerieByCastIdCalledCopyWithImpl(
      _SerieByCastIdCalled _value, $Res Function(_SerieByCastIdCalled) _then)
      : super(_value, (v) => _then(v as _SerieByCastIdCalled));

  @override
  _SerieByCastIdCalled get _value => super._value as _SerieByCastIdCalled;

  @override
  $Res call({
    Object castId = freezed,
  }) {
    return _then(_SerieByCastIdCalled(
      castId == freezed ? _value.castId : castId as int,
    ));
  }
}

/// @nodoc
class _$_SerieByCastIdCalled implements _SerieByCastIdCalled {
  const _$_SerieByCastIdCalled(this.castId) : assert(castId != null);

  @override
  final int castId;

  @override
  String toString() {
    return 'SeriesEvent.serieByCastIdCalled(castId: $castId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SerieByCastIdCalled &&
            (identical(other.castId, castId) ||
                const DeepCollectionEquality().equals(other.castId, castId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(castId);

  @override
  _$SerieByCastIdCalledCopyWith<_SerieByCastIdCalled> get copyWith =>
      __$SerieByCastIdCalledCopyWithImpl<_SerieByCastIdCalled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serieTypeCalled(String serieListType),
    @required Result serieByGenreCalled(int serieGenreId),
    @required Result similarSeriesCalled(int serieId),
    @required Result serieCalled(int serieId),
    @required Result serieByCastIdCalled(int castId),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return serieByCastIdCalled(castId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serieTypeCalled(String serieListType),
    Result serieByGenreCalled(int serieGenreId),
    Result similarSeriesCalled(int serieId),
    Result serieCalled(int serieId),
    Result serieByCastIdCalled(int castId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serieByCastIdCalled != null) {
      return serieByCastIdCalled(castId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serieTypeCalled(_SerieTypeCalled value),
    @required Result serieByGenreCalled(_SerieByGenreCalled value),
    @required Result similarSeriesCalled(_SimilarSeriesCalled value),
    @required Result serieCalled(_SerieCalled value),
    @required Result serieByCastIdCalled(_SerieByCastIdCalled value),
  }) {
    assert(serieTypeCalled != null);
    assert(serieByGenreCalled != null);
    assert(similarSeriesCalled != null);
    assert(serieCalled != null);
    assert(serieByCastIdCalled != null);
    return serieByCastIdCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serieTypeCalled(_SerieTypeCalled value),
    Result serieByGenreCalled(_SerieByGenreCalled value),
    Result similarSeriesCalled(_SimilarSeriesCalled value),
    Result serieCalled(_SerieCalled value),
    Result serieByCastIdCalled(_SerieByCastIdCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serieByCastIdCalled != null) {
      return serieByCastIdCalled(this);
    }
    return orElse();
  }
}

abstract class _SerieByCastIdCalled implements SeriesEvent {
  const factory _SerieByCastIdCalled(int castId) = _$_SerieByCastIdCalled;

  int get castId;
  _$SerieByCastIdCalledCopyWith<_SerieByCastIdCalled> get copyWith;
}

/// @nodoc
class _$SeriesStateTearOff {
  const _$SeriesStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<SerieSub> series) {
    return _LoadSuccess(
      series,
    );
  }

// ignore: unused_element
  _LoadSuccessforBannerMovie loadSuccessforSerie(Serie serie) {
    return _LoadSuccessforBannerMovie(
      serie,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(SerieFailure serieFailure) {
    return _LoadFailure(
      serieFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SeriesState = _$SeriesStateTearOff();

/// @nodoc
mixin _$SeriesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<SerieSub> series),
    @required Result loadSuccessforSerie(Serie serie),
    @required Result loadFailure(SerieFailure serieFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<SerieSub> series),
    Result loadSuccessforSerie(Serie serie),
    Result loadFailure(SerieFailure serieFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $SeriesStateCopyWith<$Res> {
  factory $SeriesStateCopyWith(
          SeriesState value, $Res Function(SeriesState) then) =
      _$SeriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SeriesStateCopyWithImpl<$Res> implements $SeriesStateCopyWith<$Res> {
  _$SeriesStateCopyWithImpl(this._value, this._then);

  final SeriesState _value;
  // ignore: unused_field
  final $Res Function(SeriesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SeriesStateCopyWithImpl<$Res>
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
    return 'SeriesState.initial()';
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
    @required Result loadSuccess(List<SerieSub> series),
    @required Result loadSuccessforSerie(Serie serie),
    @required Result loadFailure(SerieFailure serieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<SerieSub> series),
    Result loadSuccessforSerie(Serie serie),
    Result loadFailure(SerieFailure serieFailure),
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
    @required Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
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

abstract class _Initial implements SeriesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$SeriesStateCopyWithImpl<$Res>
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
    return 'SeriesState.loading()';
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
    @required Result loadSuccess(List<SerieSub> series),
    @required Result loadSuccessforSerie(Serie serie),
    @required Result loadFailure(SerieFailure serieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<SerieSub> series),
    Result loadSuccessforSerie(Serie serie),
    Result loadFailure(SerieFailure serieFailure),
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
    @required Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
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

abstract class _Loading implements SeriesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<SerieSub> series});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$SeriesStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object series = freezed,
  }) {
    return _then(_LoadSuccess(
      series == freezed ? _value.series : series as List<SerieSub>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.series) : assert(series != null);

  @override
  final List<SerieSub> series;

  @override
  String toString() {
    return 'SeriesState.loadSuccess(series: $series)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.series, series) ||
                const DeepCollectionEquality().equals(other.series, series)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(series);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<SerieSub> series),
    @required Result loadSuccessforSerie(Serie serie),
    @required Result loadFailure(SerieFailure serieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return loadSuccess(series);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<SerieSub> series),
    Result loadSuccessforSerie(Serie serie),
    Result loadFailure(SerieFailure serieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(series);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
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

abstract class _LoadSuccess implements SeriesState {
  const factory _LoadSuccess(List<SerieSub> series) = _$_LoadSuccess;

  List<SerieSub> get series;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessforBannerMovieCopyWith<$Res> {
  factory _$LoadSuccessforBannerMovieCopyWith(_LoadSuccessforBannerMovie value,
          $Res Function(_LoadSuccessforBannerMovie) then) =
      __$LoadSuccessforBannerMovieCopyWithImpl<$Res>;
  $Res call({Serie serie});

  $SerieCopyWith<$Res> get serie;
}

/// @nodoc
class __$LoadSuccessforBannerMovieCopyWithImpl<$Res>
    extends _$SeriesStateCopyWithImpl<$Res>
    implements _$LoadSuccessforBannerMovieCopyWith<$Res> {
  __$LoadSuccessforBannerMovieCopyWithImpl(_LoadSuccessforBannerMovie _value,
      $Res Function(_LoadSuccessforBannerMovie) _then)
      : super(_value, (v) => _then(v as _LoadSuccessforBannerMovie));

  @override
  _LoadSuccessforBannerMovie get _value =>
      super._value as _LoadSuccessforBannerMovie;

  @override
  $Res call({
    Object serie = freezed,
  }) {
    return _then(_LoadSuccessforBannerMovie(
      serie == freezed ? _value.serie : serie as Serie,
    ));
  }

  @override
  $SerieCopyWith<$Res> get serie {
    if (_value.serie == null) {
      return null;
    }
    return $SerieCopyWith<$Res>(_value.serie, (value) {
      return _then(_value.copyWith(serie: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccessforBannerMovie implements _LoadSuccessforBannerMovie {
  const _$_LoadSuccessforBannerMovie(this.serie) : assert(serie != null);

  @override
  final Serie serie;

  @override
  String toString() {
    return 'SeriesState.loadSuccessforSerie(serie: $serie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessforBannerMovie &&
            (identical(other.serie, serie) ||
                const DeepCollectionEquality().equals(other.serie, serie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serie);

  @override
  _$LoadSuccessforBannerMovieCopyWith<_LoadSuccessforBannerMovie>
      get copyWith =>
          __$LoadSuccessforBannerMovieCopyWithImpl<_LoadSuccessforBannerMovie>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<SerieSub> series),
    @required Result loadSuccessforSerie(Serie serie),
    @required Result loadFailure(SerieFailure serieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return loadSuccessforSerie(serie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<SerieSub> series),
    Result loadSuccessforSerie(Serie serie),
    Result loadFailure(SerieFailure serieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessforSerie != null) {
      return loadSuccessforSerie(serie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return loadSuccessforSerie(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessforSerie != null) {
      return loadSuccessforSerie(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessforBannerMovie implements SeriesState {
  const factory _LoadSuccessforBannerMovie(Serie serie) =
      _$_LoadSuccessforBannerMovie;

  Serie get serie;
  _$LoadSuccessforBannerMovieCopyWith<_LoadSuccessforBannerMovie> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({SerieFailure serieFailure});

  $SerieFailureCopyWith<$Res> get serieFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$SeriesStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object serieFailure = freezed,
  }) {
    return _then(_LoadFailure(
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
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.serieFailure) : assert(serieFailure != null);

  @override
  final SerieFailure serieFailure;

  @override
  String toString() {
    return 'SeriesState.loadFailure(serieFailure: $serieFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.serieFailure, serieFailure) ||
                const DeepCollectionEquality()
                    .equals(other.serieFailure, serieFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(serieFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<SerieSub> series),
    @required Result loadSuccessforSerie(Serie serie),
    @required Result loadFailure(SerieFailure serieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return loadFailure(serieFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<SerieSub> series),
    Result loadSuccessforSerie(Serie serie),
    Result loadFailure(SerieFailure serieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(serieFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforSerie != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforSerie(_LoadSuccessforBannerMovie value),
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

abstract class _LoadFailure implements SeriesState {
  const factory _LoadFailure(SerieFailure serieFailure) = _$_LoadFailure;

  SerieFailure get serieFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
