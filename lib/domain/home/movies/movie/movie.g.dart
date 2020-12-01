// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$_$_MovieFromJson(Map<String, dynamic> json) {
  return _$_Movie(
    id: json['id'] as int,
    title: json['title'] as String,
    posterPath: json['posterPath'] as String,
    overview: json['overview'] as String,
    releaseDate: json['releaseDate'] as String,
    runtime: json['runtime'] as int,
    releaseDates: json['releaseDates'] == null
        ? null
        : ReleaseDates.fromJson(json['releaseDates'] as Map<String, dynamic>),
    voteAverage: (json['voteAverage'] as num)?.toDouble(),
    genres: (json['genres'] as List)
        ?.map(
            (e) => e == null ? null : Genre.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    homepage: json['homepage'] as String,
    video: json['video'] == null
        ? null
        : Videos.fromJson(json['video'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'posterPath': instance.posterPath,
      'overview': instance.overview,
      'releaseDate': instance.releaseDate,
      'runtime': instance.runtime,
      'releaseDates': instance.releaseDates?.toJson(),
      'voteAverage': instance.voteAverage,
      'genres': instance.genres?.map((e) => e?.toJson())?.toList(),
      'homepage': instance.homepage,
      'video': instance.video?.toJson(),
    };
