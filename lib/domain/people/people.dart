import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

import '../home/movies/favorite_movies/favorite_movies.dart';
import '../home/series/favorite_serie/favorite_serie.dart';

class Person {
  final String email;
  final String name;
  final String photoURL;
  final FavoriteMovie favoriteMovies;
  final FavoriteSerie favoriteSeries;

  Person({
    @required this.email,
    @required this.name,
    @required this.photoURL,
    @required this.favoriteMovies,
    @required this.favoriteSeries,
  });

  factory Person.fromJsonData(Map<String, dynamic> json) => Person(
        email: json['email'] as String,
        name: json['name'] as String,
        photoURL: json['photoURL'] as String,
        favoriteMovies: FavoriteMovie.fromJsonData(
            json['movies'] as Map<String, dynamic> ?? {}),
        favoriteSeries: FavoriteSerie.fromJsonData(
            json['series'] as Map<String, dynamic> ?? {}),
      );

  factory Person.fromFirebase(DocumentSnapshot doc) =>
      Person.fromJsonData(doc.data());
}
