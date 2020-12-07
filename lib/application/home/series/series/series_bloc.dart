import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/home/series/serie/serie.dart';
import '../../../../domain/home/series/serie/serie_failure.dart';
import '../../../../domain/home/series/serie_sub/serie_sub.dart';
import '../../../../domain/home/series/series_interface.dart';

part 'series_bloc.freezed.dart';
part 'series_event.dart';
part 'series_state.dart';

@injectable
class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  final SeriesInterface seriesInterface;
  SeriesBloc(this.seriesInterface) : super(const _Initial());

  @override
  Stream<SeriesState> mapEventToState(
    SeriesEvent event,
  ) async* {
    yield* event.map(
      serieTypeCalled: (e) async* {
        yield const SeriesState.loading();
        final failureOrMovies =
            await seriesInterface.getSerieListType(e.serieListType);

        yield failureOrMovies.fold(
          (f) => SeriesState.loadFailure(f),
          (series) => SeriesState.loadSuccess(series),
        );
      },
      serieByGenreCalled: (e) async* {
        yield const SeriesState.loading();
        final failureOrMovies =
            await seriesInterface.getSerieByGenre(e.serieGenreId);

        yield failureOrMovies.fold(
          (f) => SeriesState.loadFailure(f),
          (series) => SeriesState.loadSuccess(series),
        );
      },
      similarSeriesCalled: (e) async* {
        yield const SeriesState.loading();
        final failureOrMovies =
            await seriesInterface.getSimilarSeries(e.serieId);

        yield failureOrMovies.fold(
          (f) => SeriesState.loadFailure(f),
          (series) => SeriesState.loadSuccess(series),
        );
      },
      serieCalled: (e) async* {
        yield const SeriesState.loading();
        final failureOrMovies = await seriesInterface.getSerie(e.serieId);

        yield failureOrMovies.fold(
          (f) => SeriesState.loadFailure(f),
          (series) => SeriesState.loadSuccessforSerie(series),
        );
      },
      serieByCastIdCalled: (e) async* {
        yield const SeriesState.loading();
        final failureOrMovies =
            await seriesInterface.getSerieByCastId(e.castId);

        yield failureOrMovies.fold(
          (f) => SeriesState.loadFailure(f),
          (series) => SeriesState.loadSuccess(series),
        );
      },
    );
  }
}
