import 'package:dartz/dartz.dart';

import 'movie.dart';
import 'movies_failure.dart';

abstract class MoviesInterface {
  Future<Either<MovieFailure, List<Movie>>> watchMovieType(
      String movieListType);
  Future<Either<MovieFailure, List<Movie>>> watchMovieGenre(
      String movieGenreType);
  Stream<Either<MovieFailure, List<Movie>>> watchMovieFavorites();
  Future<Either<MovieFailure, Unit>> createFavoriteMovie();
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie();
}
