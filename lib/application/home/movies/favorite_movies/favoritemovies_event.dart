part of 'favoritemovies_bloc.dart';

@freezed
abstract class FavoritemoviesEvent with _$FavoritemoviesEvent {
  const factory FavoritemoviesEvent.favoriteCreated(Movie movie) =
      _FavoriteCreated;
  const factory FavoritemoviesEvent.favoriteDeleted(Movie movie) =
      _FavoriteDeleted;
  const factory FavoritemoviesEvent.watchFavorites() = _WatchFavorites;
  const factory FavoritemoviesEvent.favoritesRecieved(
      Either<MovieFailure, List<Movie>> failureOrMovies) = _FavoritesRecieved;
}
