import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/home/series/series/series_bloc.dart';
import '../../../../domain/home/series/serie/serie.dart';
import '../../../../injection.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_localizations.dart';
import '../../../core/component_widgets/movie_loading_wigdet.dart';
import '../../../core/component_widgets/poster_image_widget.dart';
import '../../../core/constants/language_constants.dart';
import 'build_show_series_info_modal_bottom_sheet_widget.dart';
import 'series_favorite_button.dart';
import 'series_small_buttons.dart';

class SeriesBannerBlockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
        create: (context) =>
            getIt<SeriesBloc>()..add(const SeriesEvent.serieCalled(87739)),
        child: BlocBuilder<SeriesBloc, SeriesState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const MovieLoadingWidget(),
              loading: (_) => const MovieLoadingWidget(),
              loadSuccessforSerie: (state) {
                final serie = state.serie;

                return BannerSerie(
                  serie: serie,
                  appTextTheme: appTextTheme,
                );
              },
              loadFailure: (_) => Container(
                height: 100.0,
                color: AppColors.red,
              ),
              loadSuccess: (_) => null,
            );
          },
        ));
  }
}

class BannerSerie extends StatelessWidget {
  const BannerSerie({
    Key key,
    @required this.serie,
    @required this.appTextTheme,
  }) : super(key: key);

  final Serie serie;
  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.6,
      child: GestureDetector(
        onTap: () => buildShowSeriesInfoModalBottomSheet(
          context: context,
          appTextTheme: appTextTheme,
          serieId: serie.id,
        ),
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.black.withOpacity(0.1),
                    AppColors.black.withOpacity(0.9)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: PosterImageWidget(movieOrSeries: serie),
              ),
            ),
            BottomItems(
              appTextTheme: appTextTheme,
              serie: serie,
            ),
          ],
        ),
      ),
    );
  }
}

class BottomItems extends StatelessWidget {
  const BottomItems({
    Key key,
    @required this.serie,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;
  final Serie serie;

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SeriesFavoriteButtonWidget(serie: serie),
              Container(
                height: 40.0,
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.white,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      lang.translate(nifemiRecommends),
                      style: appTextTheme.headline4,
                    ),
                    const SizedBox(width: 5.0),
                    const Icon(
                      Icons.verified_outlined,
                      color: AppColors.red,
                      size: 22.0,
                    )
                  ],
                ),
              ),
              SeriesInfoButtonWidget(
                appTextTheme: appTextTheme,
                serie: serie,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
