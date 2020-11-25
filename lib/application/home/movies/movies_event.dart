part of 'movies_bloc.dart';

@freezed
abstract class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.movieTypeCalled(String movieListType) =
      _MovieTypeCalled;
  const factory MoviesEvent.movieByGenreCalled(int movieGenreId) =
      _MovieByGenreCalled;
  const factory MoviesEvent.similarMoviesCalled(int movieId) =
      _SimilarMoviesCalled;
  const factory MoviesEvent.movieCalled(int movieId) = _MovieCalled;
}
