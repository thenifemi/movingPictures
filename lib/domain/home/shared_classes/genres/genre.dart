import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.freezed.dart';
part 'genre.g.dart';

@freezed
abstract class Genre with _$Genre {
  const factory Genre({
    @required int id,
    @required String name,
  }) = _Genre;
  const Genre._();

  Genre toDomain() {
    return Genre(
      id: id,
      name: name,
    );
  }

  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);
}
