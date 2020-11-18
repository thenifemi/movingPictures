import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
abstract class Movie implements _$Movie {
  const factory Movie({
    @required int id,
    @required String title,
    // @required String poster,
    // @required String year,
    // @required String duration,
    // @required String ageRestriction,
    // @required String description,
    // @required String rating,
    // @required List<String> genres,
    // @required List<String> cast,
    // @required String trailerLink,
    // @required String homepageLink,
  }) = _Movie;

  const Movie._();

  Movie toDomain() {
    return Movie(
      id: id,
      title: title,
      // poster: poster,
      // year: year,
      // duration: duration,
      // ageRestriction: ageRestriction,
      // description: description,
      // rating: rating,
      // genres: genres,
      // cast: cast,
      // trailerLink: trailerLink,
      // homepageLink: homepageLink,
    );
  }

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  factory Movie.fromFirebase(DocumentSnapshot doc) =>
      Movie.fromJson(doc.data());
}
