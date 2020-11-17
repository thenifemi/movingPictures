import 'package:movingPictures/domain/home/series/series_failure.dart';
import 'package:movingPictures/domain/home/series/serie.dart';
import 'package:dartz/dartz.dart';
import 'package:movingPictures/domain/home/series/series_interface.dart';

class SeriesRepository extends SeriesInterface {
  @override
  Future<Either<SerieFailure, Unit>> createFavoriteSerie() {
    // TODO: implement createFavoriteSerie
    throw UnimplementedError();
  }

  @override
  Future<Either<SerieFailure, Unit>> deleteFavoriteSerie() {
    // TODO: implement deleteFavoriteSerie
    throw UnimplementedError();
  }

  @override
  Stream<Either<SerieFailure, List<Serie>>> watchSerieFavorites() {
    // TODO: implement watchSerieFavorites
    throw UnimplementedError();
  }

  @override
  Stream<Either<SerieFailure, List<Serie>>> watchSerieGenre(
      String serieGenreType) {
    // TODO: implement watchSerieGenre
    throw UnimplementedError();
  }

  @override
  Stream<Either<SerieFailure, List<Serie>>> watchSerieType(
      String serieListType) {
    // TODO: implement watchSerieType
    throw UnimplementedError();
  }
}
