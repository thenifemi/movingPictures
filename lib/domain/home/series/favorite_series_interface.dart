import 'package:dartz/dartz.dart';

import 'favorite_serie/favorite_serie.dart';
import 'serie/serie_failure.dart';

abstract class FavoriteSeriesInterface {
  Stream<Either<SerieFailure, List<FavoriteSerie>>> watchSerieFavorites();
  Future<Either<SerieFailure, Unit>> createFavoriteSerie(int serieId);
  Future<Either<SerieFailure, Unit>> deleteFavoriteSerie(int serieId);
}
