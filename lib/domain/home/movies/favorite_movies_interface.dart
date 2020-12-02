import 'package:dartz/dartz.dart';

import 'movie/movies_failure.dart';
import 'movie_sub/movie_sub.dart';

abstract class FavoriteMoviesInterface {
  Stream<Either<MovieFailure, List<MovieSub>>> watchMovieFavorites();
  Future<Either<MovieFailure, Unit>> createFavoriteMovie();
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie();
}
