import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';
import 'package:movingPictures/presentation/core/component_widgets/primary_button_widget.dart';
import 'package:movingPictures/presentation/core/constants/language_constants.dart';

import '../../core/constants/constants.dart';
import 'genres_list.dart';
import 'sub_data.dart';

class InformationItemsWidget extends StatelessWidget {
  const InformationItemsWidget({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => ExtendedNavigator.of(context).pop(),
      ),
      expandedHeight: MediaQuery.of(context).size.height / 1.8,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        background: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage(theQueensGambitPoster),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 30.0, sigmaY: 30.0),
            child: Items(
              appTextTheme: appTextTheme,
            ),
          ),
        ),
      ),
    );
  }
}

class Items extends StatelessWidget {
  final TextTheme appTextTheme;
  const Items({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! This is about pretty nested! Bear with me!
    return Container(
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
      child: Column(
        children: [
          const SizedBox(height: 40.0),

          //* Movie/Series Poster
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                theQueensGambitPoster,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 30.0),

          //* [SubData] Rating, year, age restriction, length and ...
          SubData(appTextTheme: appTextTheme),
          const SizedBox(height: 10.0),

          //*[GenresList] List of the movie/series genres
          GenresList(),
          const SizedBox(height: 10.0),

          //* Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                PrimaryButton(
                  appTextTheme: appTextTheme,
                  icon: SvgPicture.asset(
                    playIcon,
                    color: AppColors.black,
                  ),
                  name: watchTrailer,
                  color: AppColors.white,
                  onpressed: () {},
                  isFullButton: true,
                ),
                PrimaryButton(
                  appTextTheme: appTextTheme,
                  name: visitHome,
                  color: AppColors.white.withOpacity(0.2),
                  onpressed: () {},
                  isFullButton: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
