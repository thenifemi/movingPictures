import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.freezed.dart';
part 'cast.g.dart';

@freezed
abstract class Cast with _$Cast {
  const factory Cast({
    @required int id,
    @required String name,
    @required String profilePath,
  }) = _Cast;

  const Cast._();

  factory Cast.fromJson(Map<String, dynamic> json) => Cast(
      id: json['id'] as int,
      name: json['name'] as String,
      profilePath: json['profile_path'] as String);
}
