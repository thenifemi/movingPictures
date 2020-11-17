// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Serie _$_$_SerieFromJson(Map<String, dynamic> json) {
  return _$_Serie(
    id: json['id'] as String,
    name: json['name'] as String,
    poster: json['poster'] as String,
    year: json['year'] as String,
    season: json['season'] as String,
    ageRestriction: json['ageRestriction'] as String,
    description: json['description'] as String,
    rating: json['rating'] as String,
    genres: (json['genres'] as List)?.map((e) => e as String)?.toList(),
    cast: (json['cast'] as List)?.map((e) => e as String)?.toList(),
    trailerLink: json['trailerLink'] as String,
    homepageLink: json['homepageLink'] as String,
  );
}

Map<String, dynamic> _$_$_SerieToJson(_$_Serie instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'poster': instance.poster,
      'year': instance.year,
      'season': instance.season,
      'ageRestriction': instance.ageRestriction,
      'description': instance.description,
      'rating': instance.rating,
      'genres': instance.genres,
      'cast': instance.cast,
      'trailerLink': instance.trailerLink,
      'homepageLink': instance.homepageLink,
    };
