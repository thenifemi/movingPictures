import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/home/series/favorite_serie/favorite_serie.dart';
import '../../../../domain/home/series/favorite_series_interface.dart';
import '../../../../domain/home/series/serie/serie_failure.dart';

part 'favoriteseries_bloc.freezed.dart';
part 'favoriteseries_event.dart';
part 'favoriteseries_state.dart';

@injectable
class FavoriteseriesBloc
    extends Bloc<FavoriteseriesEvent, FavoriteseriesState> {
  final FavoriteSeriesInterface favoriteSeriesInterface;
  StreamSubscription<Either<SerieFailure, List<FavoriteSerie>>>
      favoriteSeriesStream;

  FavoriteseriesBloc(this.favoriteSeriesInterface) : super(const _Initial());

  @override
  Stream<FavoriteseriesState> mapEventToState(
    FavoriteseriesEvent event,
  ) async* {
    yield* event.map(
      favoriteCreated: (e) async* {
        yield const FavoriteseriesState.loading();
        final failureOrSuccess =
            await favoriteSeriesInterface.createFavoriteSerie(e.serieId);

        yield failureOrSuccess.fold(
          (f) => FavoriteseriesState.failure(f),
          (_) => const FavoriteseriesState.createSuccess(),
        );
      },
      favoriteDeleted: (e) async* {
        yield const FavoriteseriesState.loading();
        final failureOrSuccess =
            await favoriteSeriesInterface.deleteFavoriteSerie(e.serieId);

        yield failureOrSuccess.fold(
          (f) => FavoriteseriesState.failure(f),
          (_) => const FavoriteseriesState.deleteSuccess(),
        );
      },

      //? Stream watchers
      watchFavorites: (e) async* {
        yield const FavoriteseriesState.loading();
        await favoriteSeriesStream?.cancel();

        favoriteSeriesStream = favoriteSeriesInterface
            .watchSerieFavorites()
            .listen((failureOrMovies) => add(
                  FavoriteseriesEvent.favoritesRecieved(failureOrMovies),
                ));
      },
      favoritesRecieved: (e) async* {
        yield e.failureOrSeries.fold(
          (f) => FavoriteseriesState.failure(f),
          (movies) => FavoriteseriesState.watchSuccess(movies),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await favoriteSeriesStream?.cancel();
    return super.close();
  }
}
