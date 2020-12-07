import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/home/series/series/series_bloc.dart';
import '../../../../domain/home/series/serie_sub/serie_sub.dart';
import '../../../../injection.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_localizations.dart';
import '../../../core/component_widgets/movie_loading_wigdet.dart';
import '../../../core/component_widgets/poster_image_widget.dart';
import 'build_show_series_info_modal_bottom_sheet_widget.dart';

class SeriesRegularBlockWidget extends StatelessWidget {
  final String blockName;
  final SeriesEvent seriesEvent;

  const SeriesRegularBlockWidget({
    Key key,
    @required this.blockName,
    @required this.seriesEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SeriesBloc>()..add(seriesEvent),
      child: BlocBuilder<SeriesBloc, SeriesState>(
        builder: (context, state) {
          return BlocBuilder<SeriesBloc, SeriesState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const MovieLoadingWidget(),
                loading: (_) => const MovieLoadingWidget(),
                loadSuccess: (state) => SerieData(
                  blockName: blockName,
                  series: state.series,
                ),
                loadFailure: (_) => Container(
                  height: 100.0,
                  color: AppColors.red,
                ),
                loadSuccessforSerie: (_) => null,
              );
            },
          );
        },
      ),
    );
  }
}

class SerieData extends StatelessWidget {
  const SerieData({
    Key key,
    @required this.series,
    @required this.blockName,
  }) : super(key: key);

  final List<SerieSub> series;
  final String blockName;

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    final lang = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            blockName,
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          height: MediaQuery.of(context).size.height / 5.5,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: series.length,
            itemBuilder: (context, i) {
              final serie = series[i];
              return GestureDetector(
                onTap: () => buildShowSeriesInfoModalBottomSheet(
                  context: context,
                  appTextTheme: appTextTheme,
                  serieId: serie.id,
                ),
                child: Tooltip(
                  message: serie.name,
                  child: Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: PosterImageWidget(movieOrSeries: serie),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
