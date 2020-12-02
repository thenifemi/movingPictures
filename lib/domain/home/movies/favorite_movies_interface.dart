import 'package:dartz/dartz.dart';

import 'movie/movie.dart';
import 'movie/movies_failure.dart';

abstract class FavoriteMoviesInterface {
  Stream<Either<MovieFailure, List<Movie>>> watchMovieFavorites();
  Future<Either<MovieFailure, Unit>> createFavoriteMovie(Movie movie);
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie(Movie movie);
}
