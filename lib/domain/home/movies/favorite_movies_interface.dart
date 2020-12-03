import 'package:dartz/dartz.dart';

import 'favorite_movies/favorite_movies.dart';
import 'movie/movies_failure.dart';

abstract class FavoriteMoviesInterface {
  Stream<Either<MovieFailure, List<FavoriteMovie>>> watchMovieFavorites();
  Future<Either<MovieFailure, Unit>> createFavoriteMovie(int movieId);
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie(int movieId);
}
