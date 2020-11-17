import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import '../../domain/home/movies/movie.dart';
import '../../domain/home/movies/movies_failure.dart';
import '../../domain/home/movies/movies_interface.dart';
import '../core/credentials.dart';

class MoviesRepository extends MoviesInterface {
  final Dio _dio = Dio();

  final String apiKey = TMDB_API_KEY;
  final String tmdbUrl = TMDB_URL;

  @override
  Future<Either<MovieFailure, List<Movie>>> watchMovieType(
    String movieListType,
  ) async {
    final getMovieTypeUrl = "$tmdbUrl/movie/$movieListType";
    final params = {
      "api_key": apiKey,
      "language": "en_US",
      "page": 1,
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getMovieTypeUrl,
        queryParameters: params,
      );
      final List<Movie> movies = (response.data["results"] as List)
          .map(
            (i) => Movie.fromJson(i as Map<String, dynamic>),
          )
          .toList();

      return right(movies);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }

  @override
  Future<Either<MovieFailure, List<Movie>>> watchMovieGenre(
    String movieGenreType,
  ) {
    throw UnimplementedError();
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
