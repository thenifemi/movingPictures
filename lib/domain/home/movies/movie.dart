import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'genres/genre.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
abstract class Movie implements _$Movie {
  const factory Movie({
    @required int id,
    @required String title,
    @required String poster_path,
    @required String overview,
    @required String release_date,
    @required int runtime,
    // @required Map<String, dynamic> release_dates, //* This is age restriction.
    @required double vote_average,
    @required List<Genre> genres,
    // @required List<String> cast,
    @required String homepage,
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
      genres: genres,
      homepage: homepage,
      // release_dates: release_dates,
    );
  }

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json['id'] as int,
        title: json['title'] as String,
        poster_path: json['poster_path'] as String,
        overview: json['overview'] as String ?? "",
        release_date: json['release_date'] as String ?? "",
        runtime: json['runtime'] as int ?? 0,
        vote_average: (json['vote_average'] as num)?.toDouble() ?? 0.0,
        homepage: json['homepage'] as String ?? "n/a",
        genres: (json['genres'] as List ??
                [
                  {"id": -0, "name": "n/a"}
                ])
            .map((genre) => Genre.fromJson(genre as Map<String, dynamic>))
            .toList(),
        // release_dates: (json["release_dates"] as Map<String, dynamic> ??
        //         {
        //           "results": [
        //             {
        //               "iso_3166_1": "n/a",
        //               "release_dates": [
        //                 {"certification": "14"}
        //               ],
        //             }
        //           ]
        //         })
        //     .map((key, value) => null),
      );

  factory Movie.fromFirebase(DocumentSnapshot doc) =>
      Movie.fromJson(doc.data());
}
