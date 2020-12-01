import 'package:flutter/foundation.dart';

class Videos {
  Videos({
    @required this.results,
  });

  final List<Result> results;

  factory Videos.fromJson(Map<String, dynamic> json) => Videos(
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
    @required this.id,
    @required this.key,
    @required this.name,
    @required this.site,
    @required this.type,
  });

  final String id;

  final String key;
  final String name;
  final String site;
  final String type;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        id: json["id"] as String,
        key: json["key"] as String,
        name: json["name"] as String,
        site: json["site"] as String,
        type: json["type"] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "key": key,
        "name": name,
        "site": site,
        "type": type,
      };
}
