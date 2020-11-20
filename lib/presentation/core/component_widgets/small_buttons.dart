import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:movingPictures/domain/home/movies/movie.dart';

import '../../routes/router.gr.dart';
import '../app_colors.dart';
import '../app_localizations.dart';
import '../constants/constants.dart';
import '../constants/language_constants.dart';

class ShareButtonWidget extends StatelessWidget {
  final TextTheme appTextTheme;
  final Function onPressed;

  const ShareButtonWidget({
    Key key,
    @required this.appTextTheme,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return SizedBox(
      child: RawMaterialButton(
        onPressed: () {},
        child: Column(
          children: [
            SvgPicture.asset(
              shareIcon,
              color: AppColors.white,
            ),
            const SizedBox(height: 5.0),
            Text(
              lang.translate(share),
              style: appTextTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButtonWidget extends StatelessWidget {
  final TextTheme appTextTheme;
  final Function onPressed;
  const FavoriteButtonWidget({
    Key key,
    @required this.appTextTheme,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return SizedBox(
      child: RawMaterialButton(
        onPressed: () {},
        child: Column(
          children: [
            SvgPicture.asset(
              favoriteIcon,
              color: AppColors.white,
            ),
            const SizedBox(height: 5.0),
            Text(
              lang.translate(favorite),
              style: appTextTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}

class InfoButtonWidget extends StatelessWidget {
  final Movie movie;
  final TextTheme appTextTheme;
  const InfoButtonWidget({
    Key key,
    @required this.appTextTheme,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return SizedBox(
      child: RawMaterialButton(
        onPressed: () {},
        // onPressed: () =>
        //     ExtendedNavigator.of(context).pushMovieOrSeriesInfo(movie: movie),
        child: Column(
          children: [
            SvgPicture.asset(
              infoIcon,
              color: AppColors.white,
            ),
            const SizedBox(height: 5.0),
            Text(
              lang.translate(info),
              style: appTextTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
