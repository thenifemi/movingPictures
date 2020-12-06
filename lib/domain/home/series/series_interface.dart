import 'package:dartz/dartz.dart';

import '../shared_classes/cast/cast.dart';
import '../shared_classes/cast/cast_failure.dart';
import '../shared_classes/genres/genre.dart';
import '../shared_classes/genres/genre_failure.dart';
import 'serie/serie.dart';
import 'serie/serie_failure.dart';
import 'serie_sub/serie_sub.dart';

abstract class SeriesInterface {
  Future<Either<SerieFailure, Serie>> getSerie(int serieId);
  Future<Either<SerieFailure, List<SerieSub>>> getSerieListType(
      String seriesListType);
  Future<Either<SerieFailure, List<SerieSub>>> getSimilarSeries(int serieId);

  Future<Either<GenreFailure, List<Genre>>> getGenres();
  Future<Either<SerieFailure, List<SerieSub>>> getSerieByGenre(
      int serieGenreId);

  Future<Either<CastFailure, List<Cast>>> getCast(int serieId);
  Future<Either<SerieFailure, List<SerieSub>>> getSerieByCastId(int castId);
}
