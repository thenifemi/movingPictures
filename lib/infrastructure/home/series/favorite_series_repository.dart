import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/home/series/favorite_serie/favorite_serie.dart';
import '../../../domain/home/series/favorite_series_interface.dart';
import '../../../domain/home/series/serie/serie_failure.dart';
import '../../../infrastructure/core/firestore_helper.dart';

@LazySingleton(as: FavoriteSeriesInterface)
class FavoriteSeriesRepository extends FavoriteSeriesInterface {
  final FirebaseFirestore _firestore;

  FavoriteSeriesRepository(this._firestore);

  @override
  Future<Either<SerieFailure, Unit>> createFavoriteSerie(int serieId) async {
    try {
      final favoriteSerieDoc = await _firestore.favoriteSerieDocument(serieId);
      await favoriteSerieDoc.set({"id": serieId});

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const SerieFailure.insufficientPermissions());
      } else {
        //log error
        return left(const SerieFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<SerieFailure, Unit>> deleteFavoriteSerie(int serieId) async {
    try {
      final favoriteSerieDoc = await _firestore.favoriteSerieDocument(serieId);
      await favoriteSerieDoc.delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const SerieFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const SerieFailure.unexpected());
      } else {
        //log error
        return left(const SerieFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<SerieFailure, List<FavoriteSerie>>>
      watchSerieFavorites() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc
        .collection('series')
        .snapshots()
        .map(
          (snapshot) => right<SerieFailure, List<FavoriteSerie>>(
            snapshot.docs
                .map((doc) => FavoriteSerie.fromFirebase(doc))
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const SerieFailure.insufficientPermissions());
      } else {
        return left(const SerieFailure.unexpected());
      }
    });
  }
}
