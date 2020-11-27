import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movingPictures/domain/home/movies/cast/cast_failure.dart';
import 'package:movingPictures/domain/home/movies/cast/cast.dart';

import '../../domain/home/movies/genres/genre.dart';
import '../../domain/home/movies/genres/genre_failure.dart';
import '../../domain/home/movies/movie/movie.dart';
import '../../domain/home/movies/movie/movies_failure.dart';
import '../../domain/home/movies/movie_sub/movie_sub.dart';
import '../../domain/home/movies/movies_interface.dart';
import '../core/credentials.dart';

@LazySingleton(as: MoviesInterface)
class MoviesRepository extends MoviesInterface {
  final Dio _dio = Dio();
  final String apiKey = TMDB_API_KEY;
  final String tmdbUrl = TMDB_URL;
  String deviceLocal = Platform.localeName;

  //* Gets all movie information for a specific movie
  //* when the movieId is passed from getMovieType or getMovieByGenre
  @override
  Future<Either<MovieFailure, Movie>> getMovie(int movieId) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getMovieUrl = "$tmdbUrl/movie/$movieId";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "append_to_response": "release_dates"
    };

    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getMovieUrl,
        queryParameters: params,
      );
      final Movie movie = Movie.fromJson(response.data);

      return right(movie);
    } catch (e, s) {
      print(e);
      print(s);
      return left(const MovieFailure.unexpected());
    }
  }

  //* Gets only the movie ID, Title and Poster path for a specific movie list
  //* like Popular, Now_playing and Upcoming
  @override
  Future<Either<MovieFailure, List<MovieSub>>> getMovieListType(
    String movieListType,
  ) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

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
      final List<MovieSub> movies = (response.data["results"] as List)
          .map((i) => MovieSub.fromJsonData(i as Map<String, dynamic>))
          .toList();

      return right(movies);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }

  //* Gets only the movie ID, Title and Poster path for a similar movies list
  @override
  Future<Either<MovieFailure, List<MovieSub>>> getSimilarMovies(
      int movieId) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getSimilarMoviesUrl = "$tmdbUrl/movie/$movieId/similar";
    final params = {
      "api_key": apiKey,
      "language": deviceLocal,
      "page": 1,
    };
    try {
      final Response<Map<String, dynamic>> response = await _dio.get(
        getSimilarMoviesUrl,
        queryParameters: params,
      );
      final List<MovieSub> movies = (response.data["results"] as List)
          .map((i) => MovieSub.fromJsonData(i as Map<String, dynamic>))
          .toList();

      return right(movies);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }

  //* Gets only the genre ID and Name for list of genres
  @override
  Future<Either<GenreFailure, List<Genre>>> getGenres() async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

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
          .map((genre) => Genre.fromJson(genre as Map<String, dynamic>))
          .toList();

      return right(genres);
    } catch (e) {
      return left(const GenreFailure.unexpected());
    }
  }

  //* Gets only the movie ID, Title and Poster path for a specific genre
  @override
  Future<Either<MovieFailure, List<MovieSub>>> getMovieByGenre(
    int movieGenreId,
  ) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

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
      final List<MovieSub> movies = (response.data["results"] as List)
          .map((i) => MovieSub.fromJsonData(i as Map<String, dynamic>))
          .toList();

      return right(movies);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }

  @override
  Future<Either<CastFailure, List<Cast>>> getCast(int movieId) async {
    if (deviceLocal == "pt_BR") deviceLocal = "pt-BR";
    if (deviceLocal == "en_US") deviceLocal = "en-US";

    final getCastUrl = "$tmdbUrl/movie/$movieId/credits";
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
