import 'package:flutter/material.dart';

import '../../../domain/home/movies/movie/movie.dart';
import '../../core/component_widgets/age_restriction_widget.dart';
import 'little_favorite_sub_data_icon.dart';

class SubData extends StatelessWidget {
  final Movie movie;
  final TextTheme appTextTheme;

  const SubData({
    Key key,
    @required this.appTextTheme,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final releaseDates =
        movie.releaseDates.results.where((e) => e.iso31661 == "US").isEmpty
            ? null
            : movie.releaseDates.results
                .where((e) => e.iso31661 == "US")
                .first
                .releaseDates
                .first
                .certification;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LitteFavoriteSubDataIcon(movie: movie),
        const SizedBox(width: 10.0),
        Text(movie.voteAverage.toString(),
            style: TextStyle(
              fontFamily: appTextTheme.subtitle2.fontFamily,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            )),
        const SizedBox(width: 20.0),
        Text(movie.releaseDate,
            style: TextStyle(
              fontFamily: appTextTheme.subtitle1.fontFamily,
              fontWeight: FontWeight.w600,
              color: appTextTheme.subtitle1.color,
            )),
        const SizedBox(width: 20.0),
        AgeRestrictionWidget(
          age:
              releaseDates == null || releaseDates == "" ? "N/A" : releaseDates,
        ),
        const SizedBox(width: 20.0),
        Text("${movie.runtime} mins",
            style: TextStyle(
              fontFamily: appTextTheme.subtitle1.fontFamily,
              fontWeight: FontWeight.w600,
              color: appTextTheme.subtitle1.color,
            )),
      ],
    );
  }
}
