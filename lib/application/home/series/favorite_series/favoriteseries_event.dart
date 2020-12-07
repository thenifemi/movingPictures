part of 'favoriteseries_bloc.dart';

@freezed
abstract class FavoriteseriesEvent with _$FavoriteseriesEvent {
  const factory FavoriteseriesEvent.favoriteCreated(int serieId) =
      _FavoriteCreated;
  const factory FavoriteseriesEvent.favoriteDeleted(int serieId) =
      _FavoriteDeleted;
  const factory FavoriteseriesEvent.watchFavorites() = _WatchFavorites;
  const factory FavoriteseriesEvent.favoritesRecieved(
          Either<SerieFailure, List<FavoriteSerie>> failureOrSeries) =
      _FavoritesRecieved;
}
