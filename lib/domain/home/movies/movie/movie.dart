import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../shared_classes/genres/genre.dart';
import '../../shared_classes/videos.dart';
import 'release_dates.dart';

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
    @required ReleaseDates releaseDates,
    @required double voteAverage,
    @required List<Genre> genres,
    @required String homepage,
    @required Videos video,
  }) = _Movie;

  const Movie._() : super();

  factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        id: json['id'] as int ?? -0,
        title: json['title'] as String ?? "",
        posterPath: json['poster_path'] as String ?? "",
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
        releaseDates: ReleaseDates.fromJson(
            json["release_dates"] as Map<String, dynamic> ??
                {"release_dates": []}),
        video:
            Videos.fromJson(json["videos"] as Map<String, dynamic> ?? {"": ""}),
      );

  @override
  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "poster_path": posterPath,
        "overview": overview,
        "runtime": runtime,
        "release_date": releaseDate,
        "release_dates": releaseDates,
        "homepage": homepage,
        "vote_average": voteAverage,
        "genres": genres,
        "videos": video,
      };

  factory Movie.fromFirebase(DocumentSnapshot doc) =>
      Movie.fromJson(doc.data());
}
