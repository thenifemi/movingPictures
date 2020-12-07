import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/home/series/favorite_series/favoriteseries_bloc.dart';
import '../../application/home/series/series/series_bloc.dart';
import '../../domain/home/series/favorite_serie/favorite_serie.dart';
import '../../injection.dart';
import '../core/app_colors.dart';
import '../core/component_widgets/movie_loading_wigdet.dart';
import '../core/component_widgets/poster_image_widget.dart';
import '../home/series/widgets/build_show_series_info_modal_bottom_sheet_widget.dart';

class FavoriteSeriesTab extends StatelessWidget {
  const FavoriteSeriesTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) => getIt<FavoriteseriesBloc>()
        ..add(const FavoriteseriesEvent.watchFavorites()),
      child: BlocBuilder<FavoriteseriesBloc, FavoriteseriesState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            loading: (_) => const RawMaterialButton(
                onPressed: null,
                child: CircularProgressIndicator(
                  backgroundColor: AppColors.white,
                )),
            failure: (_) => RawMaterialButton(
              onPressed: null,
              child: Container(color: AppColors.red),
            ),
            watchSuccess: (state) {
              final favSeries = state.favoriteSeries;

              return FavSeries(
                favSeries: favSeries,
                appTextTheme: appTextTheme,
              );
            },
          );
        },
      ),
    );
  }
}

class FavSeries extends StatelessWidget {
  const FavSeries({
    Key key,
    @required this.favSeries,
    @required this.appTextTheme,
  }) : super(key: key);

  final List<FavoriteSerie> favSeries;
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
        key: Key(favSeries.length.toString()),
        childAspectRatio: itemWidth / itemHeight,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 3,
        children: List.generate(
          favSeries.length,
          (i) {
            final favSerie = favSeries[i];
            return BlocProvider(
              create: (context) => getIt<SeriesBloc>()
                ..add(SeriesEvent.serieCalled(favSerie.favoriteSerieId)),
              child: BlocBuilder<SeriesBloc, SeriesState>(
                buildWhen: (previous, current) => previous != current,
                builder: (context, state) {
                  return state.map(
                    initial: (_) => const MovieLoadingWidget(),
                    loading: (_) => const MovieLoadingWidget(),
                    loadSuccess: (_) => null,
                    loadFailure: (_) => Container(
                      height: 100.0,
                      color: AppColors.red,
                    ),
                    loadSuccessforSerie: (state) {
                      final serie = state.serie;

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
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
