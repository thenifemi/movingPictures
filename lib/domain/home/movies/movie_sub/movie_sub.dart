import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_sub.freezed.dart';

@freezed
abstract class MovieSub with _$MovieSub {
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
}
