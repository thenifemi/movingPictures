import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/home/movies/movie/movies_failure.dart';
import '../../domain/home/movies/movie_sub/movie_sub.dart';
import '../../domain/home/series/serie_sub/serie_sub.dart';
import '../../domain/search/search.dart';
import '../../domain/search/search_interface.dart';
import '../core/credentials.dart';

@LazySingleton(as: SearchInterface)
class SearchRepository extends SearchInterface {
  final Dio _dio = Dio();
  final String apiKey = TMDB_API_KEY;
  final String tmdbUrl = TMDB_URL;
  String deviceLocal = Platform.localeName;

  //* Gets only the movie or serie ID, Title and Poster path for trending list
  @override
  Future<Either<MovieFailure, List<Either<MovieSub, SerieSub>>>>
      getTrending() async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getTrendingUrl = "$tmdbUrl/trending/all/week";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "append_to_response": "release_dates,videos"
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getTrendingUrl,
        queryParameters: params,
      );
      final movieOrSerie = (response.data["results"] as List).map((i) {
        if (i["media_type"] as String == "movie") {
          final movie = MovieSub(
              id: i["id"] as int,
              title: i["title"] as String,
              posterPath: i["poster_path"] as String);
          return left(movie);
        } else {
          final serie = SerieSub(
              id: i["id"] as int,
              name: i["name"] as String,
              posterPath: i["poster_path"] as String);
          return right(serie);
        }
      }).toList();

      return right(movieOrSerie as List<Either<MovieSub, SerieSub>>);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }

  @override
  Future<Either<MovieFailure, List<Search>>> getSearchQuery() {}
}
