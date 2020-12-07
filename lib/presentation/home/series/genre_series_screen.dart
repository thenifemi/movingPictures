import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/series/series/series_bloc.dart';
import '../../../domain/home/series/serie_sub/serie_sub.dart';
import '../../../domain/home/shared_classes/genres/genre.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/component_widgets/cancel_button_widget.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../core/component_widgets/poster_image_widget.dart';
import 'widgets/build_show_series_info_modal_bottom_sheet_widget.dart';

class GenreSeriesScreen extends StatelessWidget {
  final Genre genre;

  const GenreSeriesScreen({
    Key key,
    @required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const CancelButton(),
        title: Text(genre.name, style: appTextTheme.headline5),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<SeriesBloc>()..add(SeriesEvent.serieByGenreCalled(genre.id)),
        child: BlocBuilder<SeriesBloc, SeriesState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const MovieLoadingWidget(),
              loading: (_) => const MovieLoadingWidget(),
              loadSuccess: (state) {
                final series = state.series;

                return Series(
                  series: series,
                  appTextTheme: appTextTheme,
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
    );
  }
}

class Series extends StatelessWidget {
  const Series({
    Key key,
    @required this.series,
    @required this.appTextTheme,
  }) : super(key: key);

  final List<SerieSub> series;
  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.count(
        childAspectRatio: itemWidth / itemHeight,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 3,
        children: List.generate(
          series.length,
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
      ),
    );
  }
}
