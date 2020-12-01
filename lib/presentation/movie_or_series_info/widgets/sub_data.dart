import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movingPictures/domain/home/movies/movie/movie.dart';

import '../../core/app_colors.dart';
import '../../core/component_widgets/age_restriction_widget.dart';
import '../../core/constants/constants.dart';

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
    final releaseDates = movie.releaseDates.results;
    final dynamic ageRestrictionorNull =
        releaseDates.where((e) => e.iso31661 == "US").isNotEmpty
            ? releaseDates.where((e) => e.iso31661 == "US")
            : null;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 15.0,
          child: SvgPicture.asset(
            favoriteFilledIcon,
            color: AppColors.white,
          ),
        ),
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
          age: ageRestrictionorNull.first.releaseDates.first.certification
                  as String ??
              "=",
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
