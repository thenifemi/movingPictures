import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movingPictures/domain/home/movies/movie.dart';

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
        Text(movie.vote_average.toString(),
            style: TextStyle(
              fontFamily: appTextTheme.subtitle2.fontFamily,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            )),
        const SizedBox(width: 20.0),
        Text(movie.release_date,
            style: TextStyle(
              fontFamily: appTextTheme.subtitle1.fontFamily,
              fontWeight: FontWeight.w600,
              color: appTextTheme.subtitle1.color,
            )),
        const SizedBox(width: 20.0),
        const AgeRestrictionWidget(age: "18"),
        const SizedBox(width: 20.0),
        Text("${200} mins",
            style: TextStyle(
              fontFamily: appTextTheme.subtitle1.fontFamily,
              fontWeight: FontWeight.w600,
              color: appTextTheme.subtitle1.color,
            )),
      ],
    );
  }
}
