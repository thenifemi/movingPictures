import 'package:dartz/dartz.dart';

import 'movie.dart';
import 'movie_failure.dart';

abstract class MovieInterface {
  Stream<Either<MovieFailure, List<Movie>>> watchMovieType(
      String movieListType);
  Stream<Either<MovieFailure, List<Movie>>> watchMovieGenre(
      String movieGenreType);
  Stream<Either<MovieFailure, List<Movie>>> watchMovieFavorites();
  Future<Either<MovieFailure, Unit>> createFavoriteMovie();
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie();
}
