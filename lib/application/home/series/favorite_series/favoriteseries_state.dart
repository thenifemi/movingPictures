part of 'favoriteseries_bloc.dart';

@freezed
abstract class FavoriteseriesState with _$FavoriteseriesState {
  const factory FavoriteseriesState.initial() = _Initial;
  const factory FavoriteseriesState.loading() = _Loading;
  const factory FavoriteseriesState.failure(SerieFailure serieFailure) =
      _Failure;
  const factory FavoriteseriesState.createSuccess() = _CreateSuccess;
  const factory FavoriteseriesState.deleteSuccess() = _DeleteSuccess;
  const factory FavoriteseriesState.watchSuccess(
      List<FavoriteSerie> favoriteSeries) = _WatchSuccess;
}
