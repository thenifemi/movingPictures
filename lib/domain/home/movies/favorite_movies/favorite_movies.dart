import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_movies.freezed.dart';

@freezed
abstract class FavoriteMovie implements _$FavoriteMovie {
  const factory FavoriteMovie({@required int favoriteMovieId}) = _FavoriteMovie;
  const FavoriteMovie._();

  Map<String, dynamic> toJson() => {"id": favoriteMovieId};

  factory FavoriteMovie.fromJsonData(Map<String, dynamic> json) =>
      FavoriteMovie(favoriteMovieId: json["id"] as int ?? -0);

  factory FavoriteMovie.fromFirebase(DocumentSnapshot doc) =>
      FavoriteMovie.fromJsonData(doc.data());
}
