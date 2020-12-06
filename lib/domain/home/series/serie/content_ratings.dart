import 'package:flutter/foundation.dart';

class ContentRatings {
  ContentRatings({
    @required this.results,
  });

  final List<ContentRatingsResult> results;

  factory ContentRatings.fromJson(Map<String, dynamic> json) => ContentRatings(
        results: List<ContentRatingsResult>.from(json["results"].map(
                (x) => ContentRatingsResult.fromJson(x as Map<String, dynamic>))
            as Iterable),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class ContentRatingsResult {
  ContentRatingsResult({
    @required this.iso31661,
    @required this.rating,
  });

  final String iso31661;
  final String rating;

  factory ContentRatingsResult.fromJson(Map<String, dynamic> json) =>
      ContentRatingsResult(
        iso31661: json["iso_3166_1"] as String,
        rating: json["rating"] as String,
      );

  Map<String, dynamic> toJson() => {
        "iso_3166_1": iso31661,
        "rating": rating,
      };
}
