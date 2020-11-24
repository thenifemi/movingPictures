// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

// ignore: unused_element
  _Movie call(
      {@required int id,
      @required String title,
      @required String poster_path,
      @required String overview,
      @required String release_date,
      @required double runtime,
      @required double vote_average}) {
    return _Movie(
      id: id,
      title: title,
      poster_path: poster_path,
      overview: overview,
      release_date: release_date,
      runtime: runtime,
      vote_average: vote_average,
    );
  }

// ignore: unused_element
  Movie fromJson(Map<String, Object> json) {
    return Movie.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  int get id;
  String get title; // ignore: non_constant_identifier_names
  String get poster_path;
  String get overview;
  String get release_date;
  double get runtime; // @required String ageRestriction,
  double get vote_average;

  Map<String, dynamic> toJson();
  $MovieCopyWith<Movie> get copyWith;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String poster_path,
      String overview,
      String release_date,
      double runtime,
      double vote_average});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object poster_path = freezed,
    Object overview = freezed,
    Object release_date = freezed,
    Object runtime = freezed,
    Object vote_average = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      poster_path:
          poster_path == freezed ? _value.poster_path : poster_path as String,
      overview: overview == freezed ? _value.overview : overview as String,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date as String,
      runtime: runtime == freezed ? _value.runtime : runtime as double,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average as double,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String poster_path,
      String overview,
      String release_date,
      double runtime,
      double vote_average});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object poster_path = freezed,
    Object overview = freezed,
    Object release_date = freezed,
    Object runtime = freezed,
    Object vote_average = freezed,
  }) {
    return _then(_Movie(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      poster_path:
          poster_path == freezed ? _value.poster_path : poster_path as String,
      overview: overview == freezed ? _value.overview : overview as String,
      release_date: release_date == freezed
          ? _value.release_date
          : release_date as String,
      runtime: runtime == freezed ? _value.runtime : runtime as double,
      vote_average: vote_average == freezed
          ? _value.vote_average
          : vote_average as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Movie extends _Movie {
  const _$_Movie(
      {@required this.id,
      @required this.title,
      @required this.poster_path,
      @required this.overview,
      @required this.release_date,
      @required this.runtime,
      @required this.vote_average})
      : assert(id != null),
        assert(title != null),
        assert(poster_path != null),
        assert(overview != null),
        assert(release_date != null),
        assert(runtime != null),
        assert(vote_average != null),
        super._();

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override // ignore: non_constant_identifier_names
  final String poster_path;
  @override
  final String overview;
  @override
  final String release_date;
  @override
  final double runtime;
  @override // @required String ageRestriction,
  final double vote_average;

  @override
  String toString() {
    return 'Movie(id: $id, title: $title, poster_path: $poster_path, overview: $overview, release_date: $release_date, runtime: $runtime, vote_average: $vote_average)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Movie &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.poster_path, poster_path) ||
                const DeepCollectionEquality()
                    .equals(other.poster_path, poster_path)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.release_date, release_date) ||
                const DeepCollectionEquality()
                    .equals(other.release_date, release_date)) &&
            (identical(other.runtime, runtime) ||
                const DeepCollectionEquality()
                    .equals(other.runtime, runtime)) &&
            (identical(other.vote_average, vote_average) ||
                const DeepCollectionEquality()
                    .equals(other.vote_average, vote_average)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(poster_path) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(release_date) ^
      const DeepCollectionEquality().hash(runtime) ^
      const DeepCollectionEquality().hash(vote_average);

  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MovieToJson(this);
  }
}

abstract class _Movie extends Movie {
  const _Movie._() : super._();
  const factory _Movie(
      {@required int id,
      @required String title,
      @required String poster_path,
      @required String overview,
      @required String release_date,
      @required double runtime,
      @required double vote_average}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override // ignore: non_constant_identifier_names
  String get poster_path;
  @override
  String get overview;
  @override
  String get release_date;
  @override
  double get runtime;
  @override // @required String ageRestriction,
  double get vote_average;
  @override
  _$MovieCopyWith<_Movie> get copyWith;
}
