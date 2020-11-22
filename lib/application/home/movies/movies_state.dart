part of 'movies_bloc.dart';

@freezed
abstract class MoviesState with _$MoviesState {
  const factory MoviesState.initial() = _Initial;
  const factory MoviesState.loading() = _Loading;
  const factory MoviesState.loadSuccess(List<Movie> movies) = _LoadSuccess;
  const factory MoviesState.loadSuccessforBannerMovie(Movie movies) =
      _LoadSuccessforBannerMovie;
  const factory MoviesState.loadFailure(MovieFailure movieFailure) =
      _LoadFailure;
}
