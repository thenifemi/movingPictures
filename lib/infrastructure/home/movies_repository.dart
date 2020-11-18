import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/home/movies/genres/genre.dart';
import '../../domain/home/movies/genres/genre_failure.dart';
import '../../domain/home/movies/movie.dart';
import '../../domain/home/movies/movies_failure.dart';
import '../../domain/home/movies/movies_interface.dart';
import '../core/credentials.dart';

@LazySingleton(as: MoviesInterface)
class MoviesRepository extends MoviesInterface {
  final Dio _dio = Dio();
  final String apiKey = TMDB_API_KEY;
  final String tmdbUrl = TMDB_URL;
  final String deviceLocal = Platform.localeName;

  @override
  Future<Either<MovieFailure, List<Movie>>> getMovieListType(
    String movieListType,
  ) async {
    final getMovieTypeUrl = "$tmdbUrl/movie/$movieListType";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "page": 1,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getMovieTypeUrl,
        queryParameters: params,
      );
      final List<Movie> movies = (response.data["results"] as List)
          .map((i) => Movie.fromJson(i as Map<String, dynamic>))
          .toList();

      return right(movies);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }

  @override
  Future<Either<GenreFailure, List<Genre>>> getGenre() async {
    final getGenreUrl = "$tmdbUrl/genre/movie/list";
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
          .map((i) => Genre.fromJson(i as Map<String, dynamic>))
          .toList();

      return right(genres);
    } catch (e) {
      return left(const GenreFailure.unexpected());
    }
  }

  @override
  Future<Either<MovieFailure, List<Movie>>> getMovieByGenre(
    int movieGenreId,
  ) async {
    final getMovieGenreUrl = "$tmdbUrl/discover/movie";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "page": 1,
      "with_genres": movieGenreId,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getMovieGenreUrl,
        queryParameters: params,
      );
      final List<Movie> movies = (response.data["results"] as List)
          .map((i) => Movie.fromJson(i as Map<String, dynamic>))
          .toList();

      return right(movies);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }

  @override
  Stream<Either<MovieFailure, List<Movie>>> watchMovieFavorites() {
    throw UnimplementedError();
  }

  @override
  Future<Either<MovieFailure, Unit>> createFavoriteMovie() {
    throw UnimplementedError();
  }

  @override
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie() {
    throw UnimplementedError();
  }
}
