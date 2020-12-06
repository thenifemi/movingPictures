import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../presentation/home/widgets/all_genres_block.dart';
import '../../shared_classes/videos.dart';
import 'content_ratings.dart';

part 'serie.freezed.dart';

@freezed
abstract class Serie with _$Serie {
  const factory Serie({
    @required DateTime firstAirDate,
    @required List<Genres> genres,
    @required String homepage,
    @required int id,
    @required String name,
    @required int numberOfEpisodes,
    @required int numberOfSeasons,
    @required String overview,
    @required String posterPath,
    @required String type,
    @required double voteAverage,
    @required ContentRatings contentRatings,
    @required Videos videos,
  }) = _Serie;

  const Serie._() : super();
}
