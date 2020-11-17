part of 'movies_bloc.dart';

@freezed
abstract class MoviesState with _$MoviesState {
  const factory MoviesState({
    @required List<Movie> movies,
    @required bool isLoading,
    @required bool showErrorMessages,
    @required Option<Either<MovieFailure, List<Movie>>> failureOrSuccessOption,
  }) = _MovieState;
  factory MoviesState.initial() => MoviesState(
        movies: null,
        isLoading: false,
        showErrorMessages: false,
        failureOrSuccessOption: none(),
      );
}
