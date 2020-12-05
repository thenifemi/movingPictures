import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class FavoriteMovie extends Equatable {
  final int favoriteMovieId;
  const FavoriteMovie({@required this.favoriteMovieId}) : super();

  Map<String, dynamic> toJson() => {"id": favoriteMovieId};

  factory FavoriteMovie.fromJsonData(Map<String, dynamic> json) =>
      FavoriteMovie(favoriteMovieId: json["id"] as int ?? -0);

  factory FavoriteMovie.fromFirebase(DocumentSnapshot doc) =>
      FavoriteMovie.fromJsonData(doc.data());

  @override
  List<Object> get props => [favoriteMovieId];
}
