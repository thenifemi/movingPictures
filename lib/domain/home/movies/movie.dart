import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movingPictures/domain/home/movies/genres/genre.dart';
part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
abstract class Movie implements _$Movie {
  const factory Movie({
    @required int id,
    @required String title,
    // ignore: non_constant_identifier_names
    @required String poster_path,
    @required String overview,
    @required String release_date,
    @required double runtime,
    // @required String ageRestriction,
    @required double vote_average,
    // @required List<Genre> genres,
    // @required List<String> cast,
    // @required String video,
    // @required String homepage,
  }) = _Movie;

  const Movie._();

  Movie toDomain() {
    return Movie(
      id: id,
      title: title,
      poster_path: poster_path,
      overview: overview,
      release_date: release_date,
      runtime: runtime,
      vote_average: vote_average,
      // genres: genres,
      // video: video,
      // homepage: homepage,
    );
  }

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  factory Movie.fromFirebase(DocumentSnapshot doc) =>
      Movie.fromJson(doc.data());
}
