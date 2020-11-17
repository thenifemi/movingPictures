import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'serie.freezed.dart';
part 'serie.g.dart';

@freezed
abstract class Serie implements _$Serie {
  const factory Serie({
    @required String id,
    @required String name,
    @required String poster,
    @required String year,
    @required String season,
    @required String ageRestriction,
    @required String description,
    @required String rating,
    @required List<String> genres,
    @required List<String> cast,
    @required String trailerLink,
    @required String homepageLink,
  }) = _Serie;

  const Serie._();

  Serie toDomain() {
    return Serie(
      id: id,
      name: name,
      poster: poster,
      year: year,
      season: season,
      ageRestriction: ageRestriction,
      description: description,
      rating: rating,
      genres: genres,
      cast: cast,
      trailerLink: trailerLink,
      homepageLink: homepageLink,
    );
  }

  factory Serie.fromJson(Map<String, dynamic> json) => _$SerieFromJson(json);

  factory Serie.fromFirebase(DocumentSnapshot doc) =>
      Serie.fromJson(doc.data()).copyWith(id: doc.id);
}
