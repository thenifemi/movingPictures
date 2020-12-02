part of 'favoritemovies_bloc.dart';

@freezed
abstract class FavoritemoviesState with _$FavoritemoviesState {
  const factory FavoritemoviesState.initial() = _Initial;
  const factory FavoritemoviesState.loading() = _Loading;
  const factory FavoritemoviesState.failure(MovieFailure movieFailure) =
      _Failure;
  const factory FavoritemoviesState.createSuccess() = _CreateSuccess;
  const factory FavoritemoviesState.deleteSuccess() = _DeleteSuccess;
  const factory FavoritemoviesState.watchSuccess(
      List<MovieSub> failureOrMovies) = _WatchSuccess;
}
