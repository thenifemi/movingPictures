// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorite_movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FavoriteMovieTearOff {
  const _$FavoriteMovieTearOff();

// ignore: unused_element
  _FavoriteMovie call({@required int favoriteMovieId}) {
    return _FavoriteMovie(
      favoriteMovieId: favoriteMovieId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FavoriteMovie = _$FavoriteMovieTearOff();

/// @nodoc
mixin _$FavoriteMovie {
  int get favoriteMovieId;

  $FavoriteMovieCopyWith<FavoriteMovie> get copyWith;
}

/// @nodoc
abstract class $FavoriteMovieCopyWith<$Res> {
  factory $FavoriteMovieCopyWith(
          FavoriteMovie value, $Res Function(FavoriteMovie) then) =
      _$FavoriteMovieCopyWithImpl<$Res>;
  $Res call({int favoriteMovieId});
}

/// @nodoc
class _$FavoriteMovieCopyWithImpl<$Res>
    implements $FavoriteMovieCopyWith<$Res> {
  _$FavoriteMovieCopyWithImpl(this._value, this._then);

  final FavoriteMovie _value;
  // ignore: unused_field
  final $Res Function(FavoriteMovie) _then;

  @override
  $Res call({
    Object favoriteMovieId = freezed,
  }) {
    return _then(_value.copyWith(
      favoriteMovieId: favoriteMovieId == freezed
          ? _value.favoriteMovieId
          : favoriteMovieId as int,
    ));
  }
}

/// @nodoc
abstract class _$FavoriteMovieCopyWith<$Res>
    implements $FavoriteMovieCopyWith<$Res> {
  factory _$FavoriteMovieCopyWith(
          _FavoriteMovie value, $Res Function(_FavoriteMovie) then) =
      __$FavoriteMovieCopyWithImpl<$Res>;
  @override
  $Res call({int favoriteMovieId});
}

/// @nodoc
class __$FavoriteMovieCopyWithImpl<$Res>
    extends _$FavoriteMovieCopyWithImpl<$Res>
    implements _$FavoriteMovieCopyWith<$Res> {
  __$FavoriteMovieCopyWithImpl(
      _FavoriteMovie _value, $Res Function(_FavoriteMovie) _then)
      : super(_value, (v) => _then(v as _FavoriteMovie));

  @override
  _FavoriteMovie get _value => super._value as _FavoriteMovie;

  @override
  $Res call({
    Object favoriteMovieId = freezed,
  }) {
    return _then(_FavoriteMovie(
      favoriteMovieId: favoriteMovieId == freezed
          ? _value.favoriteMovieId
          : favoriteMovieId as int,
    ));
  }
}

/// @nodoc
class _$_FavoriteMovie extends _FavoriteMovie with DiagnosticableTreeMixin {
  const _$_FavoriteMovie({@required this.favoriteMovieId})
      : assert(favoriteMovieId != null),
        super._();

  @override
  final int favoriteMovieId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteMovie(favoriteMovieId: $favoriteMovieId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoriteMovie'))
      ..add(DiagnosticsProperty('favoriteMovieId', favoriteMovieId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteMovie &&
            (identical(other.favoriteMovieId, favoriteMovieId) ||
                const DeepCollectionEquality()
                    .equals(other.favoriteMovieId, favoriteMovieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(favoriteMovieId);

  @override
  _$FavoriteMovieCopyWith<_FavoriteMovie> get copyWith =>
      __$FavoriteMovieCopyWithImpl<_FavoriteMovie>(this, _$identity);
}

abstract class _FavoriteMovie extends FavoriteMovie {
  const _FavoriteMovie._() : super._();
  const factory _FavoriteMovie({@required int favoriteMovieId}) =
      _$_FavoriteMovie;

  @override
  int get favoriteMovieId;
  @override
  _$FavoriteMovieCopyWith<_FavoriteMovie> get copyWith;
}
