import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class FavoriteSerie extends Equatable {
  final int favoriteSerieId;
  const FavoriteSerie({int favoriteSerieId})
      : favoriteSerieId = favoriteSerieId ?? favoriteSerieId,
        super();

  Map<String, dynamic> toJson() => {"id": favoriteSerieId};

  factory FavoriteSerie.fromJsonData(Map<String, dynamic> json) =>
      FavoriteSerie(favoriteSerieId: json["id"] as int ?? -0);

  factory FavoriteSerie.fromFirebase(DocumentSnapshot doc) =>
      FavoriteSerie.fromJsonData(doc.data());

  @override
  List<Object> get props => [favoriteSerieId];
}
