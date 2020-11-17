// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'serie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Serie _$SerieFromJson(Map<String, dynamic> json) {
  return _Serie.fromJson(json);
}

/// @nodoc
class _$SerieTearOff {
  const _$SerieTearOff();

// ignore: unused_element
  _Serie call(
      {@required String id,
      @required String name,
      @required String poster,
      @required String year,
      @required String season,
      @required String ageRestriction,
      @required String description,
      @required String rating,
      @required List<String> genres,
      @required List<String> cast,
      @required String trailerLink,
      @required String homepageLink}) {
    return _Serie(
      id: id,
      name: name,
      poster: poster,
      year: year,
      season: season,
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
  Serie fromJson(Map<String, Object> json) {
    return Serie.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Serie = _$SerieTearOff();

/// @nodoc
mixin _$Serie {
  String get id;
  String get name;
  String get poster;
  String get year;
  String get season;
  String get ageRestriction;
  String get description;
  String get rating;
  List<String> get genres;
  List<String> get cast;
  String get trailerLink;
  String get homepageLink;

  Map<String, dynamic> toJson();
  $SerieCopyWith<Serie> get copyWith;
}

/// @nodoc
abstract class $SerieCopyWith<$Res> {
  factory $SerieCopyWith(Serie value, $Res Function(Serie) then) =
      _$SerieCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String poster,
      String year,
      String season,
      String ageRestriction,
      String description,
      String rating,
      List<String> genres,
      List<String> cast,
      String trailerLink,
      String homepageLink});
}

/// @nodoc
class _$SerieCopyWithImpl<$Res> implements $SerieCopyWith<$Res> {
  _$SerieCopyWithImpl(this._value, this._then);

  final Serie _value;
  // ignore: unused_field
  final $Res Function(Serie) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object poster = freezed,
    Object year = freezed,
    Object season = freezed,
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
      season: season == freezed ? _value.season : season as String,
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
abstract class _$SerieCopyWith<$Res> implements $SerieCopyWith<$Res> {
  factory _$SerieCopyWith(_Serie value, $Res Function(_Serie) then) =
      __$SerieCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String poster,
      String year,
      String season,
      String ageRestriction,
      String description,
      String rating,
      List<String> genres,
      List<String> cast,
      String trailerLink,
      String homepageLink});
}

/// @nodoc
class __$SerieCopyWithImpl<$Res> extends _$SerieCopyWithImpl<$Res>
    implements _$SerieCopyWith<$Res> {
  __$SerieCopyWithImpl(_Serie _value, $Res Function(_Serie) _then)
      : super(_value, (v) => _then(v as _Serie));

  @override
  _Serie get _value => super._value as _Serie;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object poster = freezed,
    Object year = freezed,
    Object season = freezed,
    Object ageRestriction = freezed,
    Object description = freezed,
    Object rating = freezed,
    Object genres = freezed,
    Object cast = freezed,
    Object trailerLink = freezed,
    Object homepageLink = freezed,
  }) {
    return _then(_Serie(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      poster: poster == freezed ? _value.poster : poster as String,
      year: year == freezed ? _value.year : year as String,
      season: season == freezed ? _value.season : season as String,
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
class _$_Serie extends _Serie {
  const _$_Serie(
      {@required this.id,
      @required this.name,
      @required this.poster,
      @required this.year,
      @required this.season,
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
        assert(season != null),
        assert(ageRestriction != null),
        assert(description != null),
        assert(rating != null),
        assert(genres != null),
        assert(cast != null),
        assert(trailerLink != null),
        assert(homepageLink != null),
        super._();

  factory _$_Serie.fromJson(Map<String, dynamic> json) =>
      _$_$_SerieFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String poster;
  @override
  final String year;
  @override
  final String season;
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
    return 'Serie(id: $id, name: $name, poster: $poster, year: $year, season: $season, ageRestriction: $ageRestriction, description: $description, rating: $rating, genres: $genres, cast: $cast, trailerLink: $trailerLink, homepageLink: $homepageLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Serie &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.poster, poster) ||
                const DeepCollectionEquality().equals(other.poster, poster)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.season, season) ||
                const DeepCollectionEquality().equals(other.season, season)) &&
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
      const DeepCollectionEquality().hash(season) ^
      const DeepCollectionEquality().hash(ageRestriction) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(genres) ^
      const DeepCollectionEquality().hash(cast) ^
      const DeepCollectionEquality().hash(trailerLink) ^
      const DeepCollectionEquality().hash(homepageLink);

  @override
  _$SerieCopyWith<_Serie> get copyWith =>
      __$SerieCopyWithImpl<_Serie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SerieToJson(this);
  }
}

abstract class _Serie extends Serie {
  const _Serie._() : super._();
  const factory _Serie(
      {@required String id,
      @required String name,
      @required String poster,
      @required String year,
      @required String season,
      @required String ageRestriction,
      @required String description,
      @required String rating,
      @required List<String> genres,
      @required List<String> cast,
      @required String trailerLink,
      @required String homepageLink}) = _$_Serie;

  factory _Serie.fromJson(Map<String, dynamic> json) = _$_Serie.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get poster;
  @override
  String get year;
  @override
  String get season;
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
  _$SerieCopyWith<_Serie> get copyWith;
}
