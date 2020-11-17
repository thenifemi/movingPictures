import 'package:dartz/dartz.dart';

import 'serie.dart';
import 'series_failure.dart';

abstract class SerieInterface {
  Stream<Either<SerieFailure, List<Serie>>> watchSerieType(
      String serieListType);
  Stream<Either<SerieFailure, List<Serie>>> watchSerieGenre(
      String serieGenreType);
  Stream<Either<SerieFailure, List<Serie>>> watchSerieFavorites();
  Future<Either<SerieFailure, Unit>> createFavoriteSerie();
  Future<Either<SerieFailure, Unit>> deleteFavoriteSerie();
}
