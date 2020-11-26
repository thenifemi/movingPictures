import 'package:dartz/dartz.dart';

import 'genres/genre.dart';
import 'genres/genre_failure.dart';
import 'movie.dart';
import 'movie_sub/movie_sub.dart';
import 'movies_failure.dart';

abstract class MoviesInterface {
  Future<Either<MovieFailure, Movie>> getMovie(int movieId);
  Future<Either<MovieFailure, List<MovieSub>>> getMovieListType(
      String movieListType);
  Future<Either<GenreFailure, List<Genre>>> getGenres();
  Future<Either<MovieFailure, List<MovieSub>>> getMovieByGenre(
      int movieGenreId);
  Future<Either<MovieFailure, List<MovieSub>>> getSimilarMovies(int movieId);
  Stream<Either<MovieFailure, List<Movie>>> watchMovieFavorites();
  Future<Either<MovieFailure, Unit>> createFavoriteMovie();
  Future<Either<MovieFailure, Unit>> deleteFavoriteMovie();
}
