import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_sub.freezed.dart';

@freezed
abstract class MovieSub implements _$MovieSub {
  const factory MovieSub({
    @required int id,
    @required String title,
    @required String posterPath,
  }) = _MovieSub;

  const MovieSub._();

  factory MovieSub.fromJsonData(Map<String, dynamic> json) => MovieSub(
        id: json['id'] as int ?? 0,
        title: json['title'] as String ?? "n/a",
        posterPath: json['poster_path'] as String ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "poster_path": posterPath,
      };

  factory MovieSub.fromFirebase(DocumentSnapshot doc) =>
      MovieSub.fromJsonData(doc.data());
}
