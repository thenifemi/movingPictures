import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/app_colors.dart';
import '../../core/component_widgets/primary_button_widget.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';
import '../../home/widgets/small_buttons.dart';
import 'cast_list.dart';
import 'genres_list.dart';
import 'sub_data.dart';

class Items extends StatelessWidget {
  final TextTheme appTextTheme;
  const Items({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;

    //! This is about pretty nested! Bear with me!
    return Container(
      decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
      child: Column(
        children: [
          SizedBox(height: heightSize * 0.03),

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
          const SizedBox(height: 20.0),

          //* [SubData] Rating, year, age restriction, length and ...
          SubData(appTextTheme: appTextTheme),
          const SizedBox(height: 10.0),

          //*[GenresList] List of the movie/series genres
          GenresList(),
          const SizedBox(height: 10.0),

          //* Buttons
          Column(
            children: [
              PrimaryButton(
                appTextTheme: appTextTheme,
                icon: SvgPicture.asset(
                  playIcon,
                  color: AppColors.black,
                  height: 20.0,
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
          const SizedBox(height: 10.0),

          //* Movie/Series description
          Text(
            "Set during the Cold War era, orphaned chess prodigy Beth Harmon struggles with addiction in a quest to become the greatest chess player in the world.",
            style: appTextTheme.bodyText1,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10.0),

          // //* Cast
          CastList(),
          const SizedBox(height: 20.0),

          // * Favorite and share button
          Row(
            children: [
              FavoriteButtonWidget(
                appTextTheme: appTextTheme,
                onPressed: () {},
              ),
              const SizedBox(width: 50.0),
              ShareButtonWidget(
                appTextTheme: appTextTheme,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
