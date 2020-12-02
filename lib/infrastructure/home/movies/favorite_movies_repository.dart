import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/home/movies/favorite_movies_interface.dart';
import '../../../domain/home/movies/movie/movies_failure.dart';
import '../../../domain/home/movies/movie_sub/movie_sub.dart';

@LazySingleton(as: FavoriteMoviesInterface)
class FavoriteMoviesRepository extends FavoriteMoviesInterface {
  final FirebaseFirestore _firestore;

  FavoriteMoviesRepository(this._firestore);

  @override
  Future<Either<MovieFailure, Unit>> createFavoriteMovie() {}

  @override
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie() {}

  @override
  Stream<Either<MovieFailure, List<MovieSub>>> watchMovieFavorites() {}
}
