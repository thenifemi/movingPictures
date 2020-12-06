import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/home/series/serie/serie.dart';
import '../../../domain/home/series/serie/serie_failure.dart';
import '../../../domain/home/series/serie_sub/serie_sub.dart';
import '../../../domain/home/series/series_interface.dart';
import '../../../domain/home/shared_classes/cast/cast.dart';
import '../../../domain/home/shared_classes/cast/cast_failure.dart';
import '../../../domain/home/shared_classes/genres/genre.dart';
import '../../../domain/home/shared_classes/genres/genre_failure.dart';
import '../../core/credentials.dart';

@LazySingleton(as: SeriesInterface)
class SeriesRepository extends SeriesInterface {
  final Dio _dio = Dio();
  final String apiKey = TMDB_API_KEY;
  final String tmdbUrl = TMDB_URL;
  String deviceLocal = Platform.localeName;

  //* Gets all serie information for a specific serie
  //* when the serieId is passed from getSerieType or getSerieByGenre
  @override
  Future<Either<SerieFailure, Serie>> getSerie(int serieId) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getSerieUrl = "$tmdbUrl/tv/$serieId";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "append_to_response": "content_ratings,videos"
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getSerieUrl,
        queryParameters: params,
      );
      final Serie serie = Serie.fromJson(response.data);

      return right(serie);
    } catch (e) {
      return left(const SerieFailure.unexpected());
    }
  }

  //* Gets only the serie ID, Title and Poster path for a specific serie list
  //* like Popular, Now_playing and Upcoming
  @override
  Future<Either<SerieFailure, List<SerieSub>>> getSerieListType(
      String seriesListType) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getSerieTypeUrl = "$tmdbUrl/tv/$seriesListType";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "page": 1,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getSerieTypeUrl,
        queryParameters: params,
      );
      final List<SerieSub> series = (response.data["results"] as List)
          .map((i) => SerieSub.fromJsonData(i as Map<String, dynamic>))
          .toList();

      return right(series);
    } catch (e) {
      return left(const SerieFailure.unexpected());
    }
  }

  //* Gets only the serie ID, Title and Poster path for a similar series list
  @override
  Future<Either<SerieFailure, List<SerieSub>>> getSimilarSeries(
      int serieId) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getSimilarSeriesUrl = "$tmdbUrl/tv/$serieId/similar";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "page": 1,
    };
    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getSimilarSeriesUrl,
        queryParameters: params,
      );
      final List<SerieSub> series = (response.data["results"] as List)
          .map((i) => SerieSub.fromJsonData(i as Map<String, dynamic>))
          .toList();

      return right(series);
    } catch (e) {
      return left(const SerieFailure.unexpected());
    }
  }

  //* Gets only the genre ID and Name for list of genres
  @override
  Future<Either<GenreFailure, List<Genre>>> getGenres() async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getGenreUrl = "$tmdbUrl/genre/tv/list";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "page": 1,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getGenreUrl,
        queryParameters: params,
      );
      final List<Genre> genres = (response.data["genres"] as List)
          .map((genre) => Genre.fromJson(genre as Map<String, dynamic>))
          .toList();

      return right(genres);
    } catch (e) {
      return left(const GenreFailure.unexpected());
    }
  }

  //* Gets only the serie ID, Title and Poster path for a specific genre
  @override
  Future<Either<SerieFailure, List<SerieSub>>> getSerieByGenre(
      int serieGenreId) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getSerieGenreUrl = "$tmdbUrl/discover/tv";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "page": 1,
      "with_genres": serieGenreId,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getSerieGenreUrl,
        queryParameters: params,
      );
      final List<SerieSub> series = (response.data["results"] as List)
          .map((i) => SerieSub.fromJsonData(i as Map<String, dynamic>))
          .toList();

      return right(series);
    } catch (e) {
      return left(const SerieFailure.unexpected());
    }
  }

  //* Gets only the Cast ID, Name and Profile path for a casts of a series
  @override
  Future<Either<CastFailure, List<Cast>>> getCast(int serieId) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getCastUrl = "$tmdbUrl/tv/$serieId/credits";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
    };
    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getCastUrl,
        queryParameters: params,
      );
      final List<Cast> cast = (response.data["cast"] as List)
          .map((i) => Cast.fromJson(i as Map<String, dynamic>))
          .toList();

      return right(cast);
    } catch (e) {
      return left(const CastFailure.unexpected());
    }
  }

  //* Gets only the serie ID, Title and Poster path for a specific cast member
  @override
  Future<Either<SerieFailure, List<SerieSub>>> getSerieByCastId(
      int castId) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getSerieByCastIdUrl = "$tmdbUrl/person/$castId/tv_credits";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "page": 1,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getSerieByCastIdUrl,
        queryParameters: params,
      );
      final List<SerieSub> series = (response.data["cast"] as List)
          .map((i) => SerieSub.fromJsonData(i as Map<String, dynamic>))
          .toList();

      return right(series);
    } catch (e) {
      return left(const SerieFailure.unexpected());
    }
  }
}
