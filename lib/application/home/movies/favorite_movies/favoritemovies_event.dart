part of 'favoritemovies_bloc.dart';

@freezed
abstract class FavoritemoviesEvent with _$FavoritemoviesEvent {
  const factory FavoritemoviesEvent.favoriteCreated(int movieId) =
      _FavoriteCreated;
  const factory FavoritemoviesEvent.favoriteDeleted(int movieId) =
      _FavoriteDeleted;
  const factory FavoritemoviesEvent.watchFavorites() = _WatchFavorites;
  const factory FavoritemoviesEvent.favoritesRecieved(
      Either<MovieFailure, List<int>> failureOrMovies) = _FavoritesRecieved;
}
