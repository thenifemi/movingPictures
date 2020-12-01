import 'package:flutter/foundation.dart';

class ReleaseDates {
  ReleaseDates({
    @required this.results,
  });

  final List<Result> results;

  factory ReleaseDates.fromJson(Map<String, dynamic> json) => ReleaseDates(
        results: List<Result>.from(
          json["results"].map(
            (x) => Result.fromJson(x as Map<String, dynamic>),
          ) as Iterable,
        ),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    @required this.releaseDates,
    @required this.iso31661,
  });

  final List<ReleaseDate> releaseDates;
  final String iso31661;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        iso31661: json["iso_3166_1"] as String,
        releaseDates: List<ReleaseDate>.from(
          json["release_dates"].map(
            (x) => ReleaseDate.fromJson(x as Map<String, dynamic>),
          ) as Iterable,
        ),
      );

  Map<String, dynamic> toJson() => {
        "iso_3166_1": iso31661,
        "release_dates":
            List<dynamic>.from(releaseDates.map((x) => x.toJson())),
      };
}

class ReleaseDate {
  ReleaseDate({
    @required this.certification,
  });

  final String certification;

  factory ReleaseDate.fromJson(Map<String, dynamic> json) => ReleaseDate(
        certification: json["certification"] as String,
      );

  Map<String, dynamic> toJson() => {
        "certification": certification,
      };
}
