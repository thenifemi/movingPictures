import 'package:flutter/material.dart';

import '../../../../../domain/home/series/serie/serie.dart';
import '../../../../core/component_widgets/age_restriction_widget.dart';
import '../../widgets/little_favorite_sub_data_icon.dart';

class SubData extends StatelessWidget {
  final Serie serie;
  final TextTheme appTextTheme;

  const SubData({
    Key key,
    @required this.appTextTheme,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final releaseDates =
        serie.contentRatings.results.where((e) => e.iso31661 == "US").isEmpty
            ? null
            : serie.contentRatings.results
                .where((e) => e.iso31661 == "US")
                .first
                .rating;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SeriesLitteFavoriteSubDataIcon(serie: serie),
        const SizedBox(width: 10.0),
        Text(serie.voteAverage.toString(),
            style: TextStyle(
              fontFamily: appTextTheme.subtitle2.fontFamily,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            )),
        const SizedBox(width: 20.0),
        Text(serie.firstAirDate.year.toString(),
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
        Text("${serie.numberOfSeasons.toString()} Seasons",
            style: TextStyle(
              fontFamily: appTextTheme.subtitle1.fontFamily,
              fontWeight: FontWeight.w600,
              color: appTextTheme.subtitle1.color,
            )),
      ],
    );
  }
}
