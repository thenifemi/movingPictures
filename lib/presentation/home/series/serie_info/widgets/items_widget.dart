import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../domain/home/series/serie/serie.dart';
import '../../../../../infrastructure/core/credentials.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_localizations.dart';
import '../../../../core/component_widgets/flushbar_method.dart';
import '../../../../core/component_widgets/poster_image_widget.dart';
import '../../../../core/component_widgets/primary_button_widget.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/constants/language_constants.dart';
import '../../widgets/series_favorite_button.dart';
import '../../widgets/series_small_buttons.dart';
import 'cast_list.dart';
import 'genres_list.dart';
import 'sub_data.dart';

class Items extends StatelessWidget {
  final Serie serie;
  final TextTheme appTextTheme;
  const Items({
    Key key,
    @required this.appTextTheme,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heightSize = MediaQuery.of(context).size.height;
    final lang = AppLocalizations.of(context);

    // ignore: avoid_void_async
    void _launchURL() async {
      final url = serie.homepage;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        showFlushbar(context: context, message: lang.translate(noHomePage));
      }
    }

    // ignore: avoid_void_async
    void _launchTrailerURL() async {
      final url = serie.videos.results
              .where((e) => e.site == "YouTube" && e.type == "Trailer")
              .isEmpty
          ? null
          : YOUTUBE_VIDEO_PATH +
              serie.videos.results
                  .where((e) => e.site == "YouTube" && e.type == "Trailer")
                  .first
                  .key;
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        showFlushbar(context: context, message: lang.translate(noTrailer));
      }
    }

    //! This is about pretty nested! Bear with me!
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.0),
      ),
      child: Column(
        children: [
          SizedBox(height: heightSize * 0.03),

          //* serie/Series Poster
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: PosterImageWidget(movieOrSeries: serie),
            ),
          ),
          const SizedBox(height: 20.0),

          //* [SubData] Rating, year, age restriction, length and ...
          SubData(
            appTextTheme: appTextTheme,
            serie: serie,
          ),
          const SizedBox(height: 10.0),

          //*[GenresList] List of the serie/series genres
          GenresList(serie: serie),
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
                name: lang.translate(watchTrailer),
                color: AppColors.white,
                onpressed: _launchTrailerURL,
                isFullButton: true,
              ),
              PrimaryButton(
                appTextTheme: appTextTheme,
                name: lang.translate(visitHome),
                color: AppColors.white.withOpacity(0.2),
                onpressed: _launchURL,
                isFullButton: true,
              ),
            ],
          ),
          const SizedBox(height: 10.0),

          //* serie/Series description
          Text(
            serie.overview,
            style: appTextTheme.bodyText1,
          ),
          const SizedBox(height: 10.0),

          //* Cast
          CastList(serie: serie),
          const SizedBox(height: 20.0),

          //* Favorite and share button
          Row(
            children: [
              SeriesFavoriteButtonWidget(serie: serie),
              const SizedBox(width: 20.0),
              SeriesShareButtonWidget(
                serie: serie,
              ),
            ],
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
