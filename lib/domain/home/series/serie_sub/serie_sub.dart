import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'serie_sub.freezed.dart';

@freezed
abstract class SerieSub implements _$SerieSub {
  const factory SerieSub({
    @required int id,
    @required String name,
    @required String posterPath,
  }) = _SerieSub;

  const SerieSub._();

  factory SerieSub.fromJsonData(Map<String, dynamic> json) => SerieSub(
        id: json['id'] as int ?? 0,
        name: json['name'] as String ?? "n/a",
        posterPath: json['poster_path'] as String ?? "",
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "poster_path": posterPath,
      };
  factory SerieSub.fromFirebase(DocumentSnapshot doc) =>
      SerieSub.fromJsonData(doc.data());
}
