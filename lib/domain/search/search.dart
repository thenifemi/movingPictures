import 'package:dartz/dartz.dart';
import 'package:movingPictures/domain/home/movies/movie_sub/movie_sub.dart';
import 'package:movingPictures/domain/home/series/serie_sub/serie_sub.dart';

class Search {
  final Map<String, dynamic> trending;

  Search({this.trending});

  factory Search.fromJson() => Search();

  Either<MovieSub, SerieSub> movieOrSerie(Map<String, dynamic> json) {
    if (json["media_type"] as String == "movie") {
      final movie = MovieSub(
          id: json["id"] as int,
          title: json["title"] as String,
          posterPath: json["poster_path"] as String);
      return left(movie);
    } else {
      final serie = SerieSub(
          id: json["id"] as int,
          name: json["name"] as String,
          posterPath: json["poster_path"] as String);
      return right(serie);
    }
  }
}
