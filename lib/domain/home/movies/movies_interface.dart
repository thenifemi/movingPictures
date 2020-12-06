import 'package:dartz/dartz.dart';

import '../shared_classes/cast/cast.dart';
import '../shared_classes/cast/cast_failure.dart';
import '../shared_classes/genres/genre.dart';
import '../shared_classes/genres/genre_failure.dart';
import 'movie/movie.dart';
import 'movie/movies_failure.dart';
import 'movie_sub/movie_sub.dart';

abstract class MoviesInterface {
  Future<Either<MovieFailure, Movie>> getMovie(int movieId);
  Future<Either<MovieFailure, List<MovieSub>>> getMovieListType(
      String movieListType);
  Future<Either<MovieFailure, List<MovieSub>>> getSimilarMovies(int movieId);

  Future<Either<GenreFailure, List<Genre>>> getGenres();
  Future<Either<MovieFailure, List<MovieSub>>> getMovieByGenre(
      int movieGenreId);

  Future<Either<CastFailure, List<Cast>>> getCast(int movieId);
  Future<Either<MovieFailure, List<MovieSub>>> getMovieByCastId(int castId);
}
