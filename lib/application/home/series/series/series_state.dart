part of 'series_bloc.dart';

@freezed
abstract class SeriesState with _$SeriesState {
  const factory SeriesState.initial() = _Initial;
  const factory SeriesState.loading() = _Loading;
  const factory SeriesState.loadSuccess(List<SerieSub> series) = _LoadSuccess;
  const factory SeriesState.loadSuccessforSerie(Serie serie) =
      _LoadSuccessforBannerMovie;
  const factory SeriesState.loadFailure(SerieFailure serieFailure) =
      _LoadFailure;
}
