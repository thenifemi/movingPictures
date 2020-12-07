import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../application/home/series/series/series_bloc.dart';
import '../../../../domain/home/series/serie/serie.dart';
import '../../../../infrastructure/core/credentials.dart';
import '../../../../injection.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_localizations.dart';
import '../../../core/component_widgets/age_restriction_widget.dart';
import '../../../core/component_widgets/cancel_button_widget.dart';
import '../../../core/component_widgets/flushbar_method.dart';
import '../../../core/component_widgets/movie_loading_wigdet.dart';
import '../../../core/component_widgets/poster_image_widget.dart';
import '../../../core/component_widgets/primary_button_widget.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/language_constants.dart';
import '../../../routes/router.gr.dart';
import 'little_favorite_sub_data_icon.dart';
import 'series_favorite_button.dart';
import 'series_small_buttons.dart';

Future buildShowSeriesInfoModalBottomSheet({
  @required BuildContext context,
  @required TextTheme appTextTheme,
  @required int serieId,
}) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: AppColors.gray,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10.0),
      topRight: Radius.circular(10.0),
    )),
    context: context,
    builder: (context) => BlocProvider(
        create: (context) =>
            getIt<SeriesBloc>()..add(SeriesEvent.serieCalled(serieId)),
        child: BlocBuilder<SeriesBloc, SeriesState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const MovieLoadingWidget(),
              loading: (_) => const MovieLoadingWidget(),
              loadSuccess: (_) => null,
              loadSuccessforSerie: (state) => SerieData(serie: state.serie),
              loadFailure: (_) => Container(
                height: 100.0,
                color: AppColors.red,
              ),
            );
          },
        )),
  );
}

class SerieData extends StatelessWidget {
  final Serie serie;
  const SerieData({
    Key key,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
      child: Wrap(
        runSpacing: 5.0,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () =>
                    ExtendedNavigator.of(context).pushSerieInfo(serie: serie),
                child: PosterBlock(serie: serie),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: GestureDetector(
                  onTap: () =>
                      ExtendedNavigator.of(context).pushSerieInfo(serie: serie),
                  child: TitleSubtitleBodyBlock(
                    appTextTheme: appTextTheme,
                    serie: serie,
                  ),
                ),
              ),
            ],
          ),
          TrailerButtonBlock(
            appTextTheme: appTextTheme,
            serie: serie,
          ),
          const Divider(color: AppColors.white),
          SizedBox(
              height: 40.0,
              child: MoreInfoButton(
                appTextTheme: appTextTheme,
                serie: serie,
              ))
        ],
      ),
    );
  }
}

class PosterBlock extends StatelessWidget {
  final Serie serie;
  const PosterBlock({
    Key key,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 6.5,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: PosterImageWidget(movieOrSeries: serie),
      ),
    );
  }
}

class TitleSubtitleBodyBlock extends StatelessWidget {
  final TextTheme appTextTheme;
  final Serie serie;

  const TitleSubtitleBodyBlock({
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

    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    serie.name,
                    style: appTextTheme.headline5,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5.0),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      SeriesLitteFavoriteSubDataIcon(serie: serie),
                      Text(
                        serie.firstAirDate.year.toString(),
                        style: appTextTheme.subtitle1,
                      ),
                      const SizedBox(width: 10.0),
                      AgeRestrictionWidget(
                        age: releaseDates == null || releaseDates == ""
                            ? "N/A"
                            : releaseDates,
                      ),
                      const SizedBox(width: 10.0),
                      Text(serie.voteAverage.toString(),
                          style: TextStyle(
                            fontFamily: appTextTheme.subtitle2.fontFamily,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          )),
                      const SizedBox(width: 10.0),
                      Text(
                        serie.type.toString(),
                        style: appTextTheme.subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const CancelButton(),
          ],
        ),
        const SizedBox(height: 5.0),
        Text(
          serie.overview,
          style: appTextTheme.bodyText1,
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

class TrailerButtonBlock extends StatelessWidget {
  final Serie serie;
  final TextTheme appTextTheme;
  const TrailerButtonBlock({
    Key key,
    @required this.appTextTheme,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

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

    return Row(
      children: [
        PrimaryButton(
          appTextTheme: appTextTheme,
          name: lang.translate(watchTrailer),
          color: AppColors.white,
          onpressed: _launchTrailerURL,
          isFullButton: false,
        ),
        Expanded(
          child: SeriesFavoriteButtonWidget(
            serie: serie,
          ),
        ),
        Expanded(
          child: SeriesShareButtonWidget(
            serie: serie,
          ),
        ),
      ],
    );
  }
}

class MoreInfoButton extends StatelessWidget {
  final Serie serie;
  final TextTheme appTextTheme;

  const MoreInfoButton({
    Key key,
    @required this.appTextTheme,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return RawMaterialButton(
      onPressed: () =>
          ExtendedNavigator.of(context).pushSerieInfo(serie: serie),
      child: Container(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        width: double.infinity,
        child: Row(
          children: [
            SvgPicture.asset(
              infoIcon,
              color: AppColors.white,
            ),
            const SizedBox(width: 10.0),
            Text(
              lang.translate(moreInfo),
              style: appTextTheme.bodyText1,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.white,
              size: 10.0,
            )
          ],
        ),
      ),
    );
  }
}
