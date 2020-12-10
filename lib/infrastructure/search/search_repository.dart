import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/home/movies/movie/movies_failure.dart';
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
  Future<Either<MovieFailure, List<Search>>> getTrending() async {
    final getTrendingUrl = "$tmdbUrl/trending/all/week";
    final params = {
      "api_key": apiKey,
      "page": 1,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getTrendingUrl,
        queryParameters: params,
      );
      final List<Search> movieOrSerie = (response.data["results"] as List)
          .map((i) => Search.fromJson(i as Map<String, dynamic>))
          .toList();

      return right(movieOrSerie);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }

  @override
  Future<Either<MovieFailure, List<Search>>> getSearchQuery(
      String query) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getSearchUrl = "$tmdbUrl/search/multi";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "page": 1,
      "query": query,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getSearchUrl,
        queryParameters: params,
      );
      final List<Search> movieOrSerieorPerson =
          (response.data["results"] as List)
              .map((i) => Search.fromJson(i as Map<String, dynamic>))
              .toList();

      return right(movieOrSerieorPerson);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }
}
