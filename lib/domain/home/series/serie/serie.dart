import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../presentation/home/widgets/all_genres_block.dart';
import '../../shared_classes/genres/genre.dart';
import '../../shared_classes/videos.dart';
import 'content_ratings.dart';

part 'serie.freezed.dart';
part 'serie.g.dart';

@freezed
abstract class Serie with _$Serie {
  const factory Serie({
    @required DateTime firstAirDate,
    @required List<Genre> genres,
    @required String homepage,
    @required int id,
    @required String name,
    @required int numberOfEpisodes,
    @required int numberOfSeasons,
    @required String overview,
    @required String posterPath,
    @required String type,
    @required double voteAverage,
    @required ContentRatings contentRatings,
    @required Videos videos,
  }) = _Serie;

  const Serie._() : super();

  factory Serie.fromJson(Map<String, dynamic> json) => Serie(
        firstAirDate: DateTime.parse(json["first_air_date"] as String),
        genres: List<Genre>.from(json["genres"]
            .map((x) => Genre.fromJson(x as Map<String, dynamic>)) as Iterable),
        homepage: json["homepage"] as String,
        id: json["id"] as int,
        name: json["name"] as String,
        numberOfEpisodes: json["number_of_episodes"] as int,
        numberOfSeasons: json["number_of_seasons"] as int,
        overview: json["overview"] as String,
        posterPath: json["poster_path"] as String,
        type: json["type"] as String,
        voteAverage: json["vote_average"].toDouble() as double,
        contentRatings: ContentRatings.fromJson(
            json["content_ratings"] as Map<String, dynamic>),
        videos: Videos.fromJson(json["videos"] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        "first_air_date": firstAirDate,
        "genres": genres,
        "homepage": homepage,
        "id": id,
        "name": name,
        "number_of_episodes": numberOfEpisodes,
        "number_of_seasons": numberOfSeasons,
        "overview": overview,
        "poster_path": posterPath,
        "type": type,
        "vote_average": voteAverage,
        "content_ratings": contentRatings.toJson(),
        "videos": videos.toJson(),
      };
  factory Serie.fromFirebase(DocumentSnapshot doc) =>
      Serie.fromJson(doc.data());
}
