import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movingPictures/presentation/routes/router.gr.dart';

import '../../core/app_colors.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';

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
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          SvgPicture.asset(
            shareIcon,
            color: AppColors.white,
          ),
          const SizedBox(height: 5.0),
          Text(
            share,
            style: appTextTheme.subtitle1,
          ),
        ],
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
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          SvgPicture.asset(
            favoriteIcon,
            color: AppColors.white,
          ),
          const SizedBox(height: 5.0),
          Text(
            favorite,
            style: appTextTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}

class InfoButtonWidget extends StatelessWidget {
  final TextTheme appTextTheme;
  const InfoButtonWidget({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ExtendedNavigator.of(context).push(Routes.movieOrSeriesInfo),
      child: Column(
        children: [
          SvgPicture.asset(
            infoIcon,
            color: AppColors.white,
          ),
          const SizedBox(height: 5.0),
          Text(
            info,
            style: appTextTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
