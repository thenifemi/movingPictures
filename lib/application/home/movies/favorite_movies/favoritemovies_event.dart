part of 'favoritemovies_bloc.dart';

@freezed
abstract class FavoritemoviesEvent with _$FavoritemoviesEvent {
  const factory FavoritemoviesEvent.favoriteCreated(MovieSub movieSub) =
      _FavoriteCreated;
  const factory FavoritemoviesEvent.favoriteDeleted(MovieSub movieSub) =
      _FavoriteDeleted;
  const factory FavoritemoviesEvent.watchFavorites() = _WatchFavorites;
  const factory FavoritemoviesEvent.favoritesRecieved(
          Either<MovieFailure, List<MovieSub>> failureOrMovies) =
      _FavoritesRecieved;
}
