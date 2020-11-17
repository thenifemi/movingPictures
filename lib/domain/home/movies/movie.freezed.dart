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
      {@required String id,
      @required String name,
      @required String poster,
      @required String year,
      @required String duration,
      @required String ageRestriction,
      @required String description,
      @required String rating,
      @required List<String> genres,
      @required List<String> cast,
      @required String trailerLink,
      @required String homepageLink}) {
    return _Movie(
      id: id,
      name: name,
      poster: poster,
      year: year,
      duration: duration,
      ageRestriction: ageRestriction,
      description: description,
      rating: rating,
      genres: genres,
      cast: cast,
      trailerLink: trailerLink,
      homepageLink: homepageLink,
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
  String get id;
  String get name;
  String get poster;
  String get year;
  String get duration;
  String get ageRestriction;
  String get description;
  String get rating;
  List<String> get genres;
  List<String> get cast;
  String get trailerLink;
  String get homepageLink;

  Map<String, dynamic> toJson();
  $MovieCopyWith<Movie> get copyWith;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String poster,
      String year,
      String duration,
      String ageRestriction,
      String description,
      String rating,
      List<String> genres,
      List<String> cast,
      String trailerLink,
      String homepageLink});
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
    Object name = freezed,
    Object poster = freezed,
    Object year = freezed,
    Object duration = freezed,
    Object ageRestriction = freezed,
    Object description = freezed,
    Object rating = freezed,
    Object genres = freezed,
    Object cast = freezed,
    Object trailerLink = freezed,
    Object homepageLink = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      poster: poster == freezed ? _value.poster : poster as String,
      year: year == freezed ? _value.year : year as String,
      duration: duration == freezed ? _value.duration : duration as String,
      ageRestriction: ageRestriction == freezed
          ? _value.ageRestriction
          : ageRestriction as String,
      description:
          description == freezed ? _value.description : description as String,
      rating: rating == freezed ? _value.rating : rating as String,
      genres: genres == freezed ? _value.genres : genres as List<String>,
      cast: cast == freezed ? _value.cast : cast as List<String>,
      trailerLink:
          trailerLink == freezed ? _value.trailerLink : trailerLink as String,
      homepageLink: homepageLink == freezed
          ? _value.homepageLink
          : homepageLink as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String poster,
      String year,
      String duration,
      String ageRestriction,
      String description,
      String rating,
      List<String> genres,
      List<String> cast,
      String trailerLink,
      String homepageLink});
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
    Object name = freezed,
    Object poster = freezed,
    Object year = freezed,
    Object duration = freezed,
    Object ageRestriction = freezed,
    Object description = freezed,
    Object rating = freezed,
    Object genres = freezed,
    Object cast = freezed,
    Object trailerLink = freezed,
    Object homepageLink = freezed,
  }) {
    return _then(_Movie(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      poster: poster == freezed ? _value.poster : poster as String,
      year: year == freezed ? _value.year : year as String,
      duration: duration == freezed ? _value.duration : duration as String,
      ageRestriction: ageRestriction == freezed
          ? _value.ageRestriction
          : ageRestriction as String,
      description:
          description == freezed ? _value.description : description as String,
      rating: rating == freezed ? _value.rating : rating as String,
      genres: genres == freezed ? _value.genres : genres as List<String>,
      cast: cast == freezed ? _value.cast : cast as List<String>,
      trailerLink:
          trailerLink == freezed ? _value.trailerLink : trailerLink as String,
      homepageLink: homepageLink == freezed
          ? _value.homepageLink
          : homepageLink as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Movie extends _Movie {
  const _$_Movie(
      {@required this.id,
      @required this.name,
      @required this.poster,
      @required this.year,
      @required this.duration,
      @required this.ageRestriction,
      @required this.description,
      @required this.rating,
      @required this.genres,
      @required this.cast,
      @required this.trailerLink,
      @required this.homepageLink})
      : assert(id != null),
        assert(name != null),
        assert(poster != null),
        assert(year != null),
        assert(duration != null),
        assert(ageRestriction != null),
        assert(description != null),
        assert(rating != null),
        assert(genres != null),
        assert(cast != null),
        assert(trailerLink != null),
        assert(homepageLink != null),
        super._();

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$_$_MovieFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String poster;
  @override
  final String year;
  @override
  final String duration;
  @override
  final String ageRestriction;
  @override
  final String description;
  @override
  final String rating;
  @override
  final List<String> genres;
  @override
  final List<String> cast;
  @override
  final String trailerLink;
  @override
  final String homepageLink;

  @override
  String toString() {
    return 'Movie(id: $id, name: $name, poster: $poster, year: $year, duration: $duration, ageRestriction: $ageRestriction, description: $description, rating: $rating, genres: $genres, cast: $cast, trailerLink: $trailerLink, homepageLink: $homepageLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Movie &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.poster, poster) ||
                const DeepCollectionEquality().equals(other.poster, poster)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.ageRestriction, ageRestriction) ||
                const DeepCollectionEquality()
                    .equals(other.ageRestriction, ageRestriction)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)) &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)) &&
            (identical(other.trailerLink, trailerLink) ||
                const DeepCollectionEquality()
                    .equals(other.trailerLink, trailerLink)) &&
            (identical(other.homepageLink, homepageLink) ||
                const DeepCollectionEquality()
                    .equals(other.homepageLink, homepageLink)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(poster) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(ageRestriction) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(cast) ^
      const DeepCollectionEquality().hash(trailerLink) ^
      const DeepCollectionEquality().hash(homepageLink);

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
      {@required String id,
      @required String name,
      @required String poster,
      @required String year,
      @required String duration,
      @required String ageRestriction,
      @required String description,
      @required String rating,
      @required List<String> genres,
      @required List<String> cast,
      @required String trailerLink,
      @required String homepageLink}) = _$_Movie;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get poster;
  @override
  String get year;
  @override
  String get duration;
  @override
  String get ageRestriction;
  @override
  String get description;
  @override
  String get rating;
  @override
  List<String> get genres;
  @override
  List<String> get cast;
  @override
  String get trailerLink;
  @override
  String get homepageLink;
  @override
  _$MovieCopyWith<_Movie> get copyWith;
}
