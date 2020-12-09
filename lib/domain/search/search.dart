class Search {
  final int id;
  final String mediaType;

  Search({this.id, this.mediaType});

  factory Search.fromJson(Map<String, dynamic> json) => Search(
        id: json['id'] as int ?? -0,
        mediaType: json['media_type'] as String,
      );
}
