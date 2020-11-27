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
    @required String posterPath,
    @required String overview,
    @required String releaseDate,
    @required int runtime,
    // @required String releaseDates, //* This is age restriction.
    @required double voteAverage,
    @required List<Genre> genres,
    // @required List<String> cast,
    @required String homepage,
  }) = _Movie;

  const Movie._();

  Movie toDomain() {
    return Movie(
      id: id,
      title: title,
      posterPath: posterPath,
      overview: overview,
      releaseDate: releaseDate,
      runtime: runtime,
      voteAverage: voteAverage,
      genres: genres,
      homepage: homepage,
    );
  }

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json['id'] as int,
        title: json['title'] as String,
        posterPath: json['poster_path'] as String,
        overview: json['overview'] as String ?? "",
        releaseDate: json['release_date'] as String ?? "",
        runtime: json['runtime'] as int ?? 0,
        voteAverage: (json['vote_average'] as num)?.toDouble() ?? 0.0,
        homepage: json['homepage'] as String ?? "n/a",
        genres: (json['genres'] as List ??
                [
                  {"id": -0, "name": "n/a"}
                ])
            .map((genre) => Genre.fromJson(genre as Map<String, dynamic>))
            .toList(),
      );

  factory Movie.fromFirebase(DocumentSnapshot doc) =>
      Movie.fromJson(doc.data());
}

// ??
//                 {
//                   "results": [
//                     {
//                       "iso_3166_1": "n/a",
//                       "release_dates": [
//                         {"certification": "14"}
//                       ],
//                     }
//                   ]
//                 }
