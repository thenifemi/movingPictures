// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$_$_MovieFromJson(Map<String, dynamic> json) {
  return _$_Movie(
    id: json['id'] as int,
    title: json['title'] as String,
    poster_path: json['poster_path'] as String,
    overview: json['overview'] as String,
    release_date: json['release_date'] as String,
    runtime: json['runtime'] as int,
    vote_average: (json['vote_average'] as num)?.toDouble(),
    genres: (json['genres'] as List)
        ?.map(
            (e) => e == null ? null : Genre.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    homepage: json['homepage'] as String,
  );
}

Map<String, dynamic> _$_$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.poster_path,
      'overview': instance.overview,
      'release_date': instance.release_date,
      'runtime': instance.runtime,
      'vote_average': instance.vote_average,
      'genres': instance.genres?.map((e) => e?.toJson())?.toList(),
      'homepage': instance.homepage,
    };
