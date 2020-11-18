import 'package:dartz/dartz.dart';

import 'movie.dart';
import 'movies_failure.dart';

abstract class MoviesInterface {
  Future<Either<MovieFailure, List<Movie>>> getMovieListType(
      String movieListType);
  Future<Either<MovieFailure, List<Movie>>> getGenre();
  Future<Either<MovieFailure, List<Movie>>> getMovieByGenre(int movieGenreId);
  Stream<Either<MovieFailure, List<Movie>>> watchMovieFavorites();
  Future<Either<MovieFailure, Unit>> createFavoriteMovie();
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie();
}
