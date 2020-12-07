part of 'series_bloc.dart';

@freezed
abstract class SeriesEvent with _$SeriesEvent {
  const factory SeriesEvent.serieTypeCalled(String serieListType) =
      _SerieTypeCalled;
  const factory SeriesEvent.serieByGenreCalled(int serieGenreId) =
      _SerieByGenreCalled;
  const factory SeriesEvent.similarSeriesCalled(int serieId) =
      _SimilarSeriesCalled;
  const factory SeriesEvent.serieCalled(int serieId) = _SerieCalled;
  const factory SeriesEvent.serieByCastIdCalled(int castId) =
      _SerieByCastIdCalled;
}
