import 'package:dartz/dartz.dart';

import 'genres/genre.dart';
import 'genres/genre_failure.dart';
import 'movie.dart';
import 'movies_failure.dart';

abstract class MoviesInterface {
  Future<Either<MovieFailure, Movie>> getMovie(int movieId);
  Future<Either<MovieFailure, List<Movie>>> getMovieListType(
      String movieListType);
  Future<Either<GenreFailure, List<Genre>>> getGenres();
  Future<Either<MovieFailure, List<Movie>>> getMovieByGenre(int movieGenreId);
  Future<Either<MovieFailure, List<Movie>>> getSimilarMovies(int movieId);
  Stream<Either<MovieFailure, List<Movie>>> watchMovieFavorites();
  Future<Either<MovieFailure, Unit>> createFavoriteMovie();
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie();
}
