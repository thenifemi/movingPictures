part of 'movies_bloc.dart';

@freezed
abstract class MoviesState with _$MoviesState {
  const factory MoviesState.initial() = _Initial;
  const factory MoviesState.loading() = _Loading;
  const factory MoviesState.loadSuccess(List<MovieSub> movies) = _LoadSuccess;
  const factory MoviesState.loadSuccessforMovie(Movie movie) =
      _LoadSuccessforBannerMovie;
  const factory MoviesState.loadFailure(MovieFailure movieFailure) =
      _LoadFailure;
}
