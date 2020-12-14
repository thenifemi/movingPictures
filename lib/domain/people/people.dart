import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

class Person {
  final String email;
  final String name;
  final String photoURL;
  // final List<PersonFavMovie> favoriteMovies;
  // final List<PersonFavSerie> favoriteSeries;

  Person({
    @required this.email,
    @required this.name,
    @required this.photoURL,
    // @required this.favoriteMovies,
    // @required this.favoriteSeries,
  });

  factory Person.fromJsonData(Map<String, dynamic> json) => Person(
        email: json['email'] as String,
        name: json['name'] as String,
        photoURL: json['photoURL'] as String,
        // favoriteMovies: List<PersonFavMovie>.from(json['movies'].map(
        //   (x) => PersonFavMovie.fromJsonData(x as Map<String, dynamic>),
        // ) as Iterable),
        // favoriteSeries: List<PersonFavSerie>.from(json['series'].map(
        //   (x) => PersonFavSerie.fromJsonData(x as Map<String, dynamic>),
        // ) as Iterable),
      );

  factory Person.fromFirebase(DocumentSnapshot doc) =>
      Person.fromJsonData(doc.data());
}

// class PersonFavMovie {
//   final int favoriteMovieId;

//   PersonFavMovie({@required this.favoriteMovieId});

//   factory PersonFavMovie.fromJsonData(Map<String, dynamic> json) =>
//       PersonFavMovie(favoriteMovieId: json["id"] as int ?? -0);
// }

// class PersonFavSerie {
//   final int favoriteSerieId;

//   PersonFavSerie({@required this.favoriteSerieId});

//   factory PersonFavSerie.fromJsonData(Map<String, dynamic> json) =>
//       PersonFavSerie(favoriteSerieId: json["id"] as int ?? -0);
// }
