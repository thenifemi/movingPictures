import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movingPictures/application/home/series/series/series_bloc.dart';
import 'package:movingPictures/domain/home/series/serie/serie.dart';
import 'package:movingPictures/domain/home/series/serie_sub/serie_sub.dart';
import 'package:movingPictures/presentation/home/series/widgets/build_show_series_info_modal_bottom_sheet_widget.dart';

import '../../../../../application/home/movies/movies/movies_bloc.dart';
import '../../../../../domain/home/movies/movie/movie.dart';
import '../../../../../domain/home/movies/movie_sub/movie_sub.dart';
import '../../../../../injection.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_localizations.dart';
import '../../../../core/component_widgets/movie_loading_wigdet.dart';
import '../../../../core/component_widgets/poster_image_widget.dart';
import '../../../../core/constants/language_constants.dart';

class MoreLikeThisBlock extends StatelessWidget {
  final Serie serie;
  const MoreLikeThisBlock({
    Key key,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;

    final appTextTheme = Theme.of(context).textTheme;
    final lang = AppLocalizations.of(context);

    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      color: AppColors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            decoration: const BoxDecoration(
                border:
                    Border(top: BorderSide(width: 5.0, color: AppColors.red))),
            child: Text(
              lang.translate(morelikethis),
              style: TextStyle(
                  fontFamily: appTextTheme.headline5.fontFamily,
                  fontSize: 14.0,
                  fontWeight: appTextTheme.headline5.fontWeight,
                  color: appTextTheme.headline5.color),
            ),
          ),
          Expanded(
            child: BlocProvider(
              create: (context) => getIt<SeriesBloc>()
                ..add(SeriesEvent.similarSeriesCalled(serie.id)),
              child: BlocBuilder<SeriesBloc, SeriesState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => const MovieLoadingWidget(),
                    loading: (_) => const MovieLoadingWidget(),
                    loadSuccess: (state) {
                      final series = state.series;
                      return Series(
                        itemWidth: itemWidth,
                        itemHeight: itemHeight,
                        appTextTheme: appTextTheme,
                        series: series,
                      );
                    },
                    loadFailure: (_) => Container(
                      height: 100.0,
                      color: AppColors.red,
                    ),
                    loadSuccessforSerie: (_) => null,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Series extends StatelessWidget {
  const Series({
    Key key,
    @required this.itemWidth,
    @required this.itemHeight,
    @required this.appTextTheme,
    @required this.series,
  }) : super(key: key);

  final double itemWidth;
  final double itemHeight;
  final TextTheme appTextTheme;
  final List<SerieSub> series;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      childAspectRatio: itemWidth / itemHeight,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      children: List.generate(
        movies.length < 12 ? movies.length : 12,
        (i) {
          final serie = series[i];
          return GestureDetector(
            onTap: () => buildShowSeriesInfoModalBottomSheet(
              appTextTheme: appTextTheme,
              context: context,
              serieId: serie.id,
            ),
            child: Tooltip(
              message: serie.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: PosterImageWidget(movieOrSeries: serie),
              ),
            ),
          );
        },
      ),
    );
  }
}
