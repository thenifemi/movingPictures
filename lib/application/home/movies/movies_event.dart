part of 'movies_bloc.dart';

@freezed
abstract class MoviesEvent with _$MoviesEvent {
  const factory MoviesEvent.movieTypeCalled(String movieListType) =
      _MovieTypeCalled;
  const factory MoviesEvent.movieByGenreCalled(int movieGenreId) =
      _MovieByGenreCalled;

  const factory MoviesEvent.moviesRecieved(
    Either<MovieFailure, List<Movie>> failureOrMovies,
  ) = _MoviesRecieved;
}
