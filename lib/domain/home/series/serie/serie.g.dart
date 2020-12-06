// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Serie _$_$_SerieFromJson(Map<String, dynamic> json) {
  return _$_Serie(
    firstAirDate: json['firstAirDate'] == null
        ? null
        : DateTime.parse(json['firstAirDate'] as String),
    genres: (json['genres'] as List)
        ?.map(
            (e) => e == null ? null : Genre.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    homepage: json['homepage'] as String,
    id: json['id'] as int,
    name: json['name'] as String,
    numberOfEpisodes: json['numberOfEpisodes'] as int,
    numberOfSeasons: json['numberOfSeasons'] as int,
    overview: json['overview'] as String,
    posterPath: json['posterPath'] as String,
    type: json['type'] as String,
    voteAverage: (json['voteAverage'] as num)?.toDouble(),
    contentRatings: json['contentRatings'] == null
        ? null
        : ContentRatings.fromJson(
            json['contentRatings'] as Map<String, dynamic>),
    videos: json['videos'] == null
        ? null
        : Videos.fromJson(json['videos'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SerieToJson(_$_Serie instance) => <String, dynamic>{
      'firstAirDate': instance.firstAirDate?.toIso8601String(),
      'genres': instance.genres?.map((e) => e?.toJson())?.toList(),
      'homepage': instance.homepage,
      'id': instance.id,
      'name': instance.name,
      'numberOfEpisodes': instance.numberOfEpisodes,
      'numberOfSeasons': instance.numberOfSeasons,
      'overview': instance.overview,
      'posterPath': instance.posterPath,
      'type': instance.type,
      'voteAverage': instance.voteAverage,
      'contentRatings': instance.contentRatings?.toJson(),
      'videos': instance.videos?.toJson(),
    };
