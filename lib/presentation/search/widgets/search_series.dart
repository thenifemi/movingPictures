import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/series/series/series_bloc.dart';
import '../../../domain/search/search.dart';
import '../../../injection.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../core/component_widgets/poster_image_widget.dart';
import '../../home/series/widgets/build_show_series_info_modal_bottom_sheet_widget.dart';

class SearchSeries extends StatelessWidget {
  const SearchSeries({
    Key key,
    @required this.movieOrSerie,
  }) : super(key: key);

  final Search movieOrSerie;

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) =>
          getIt<SeriesBloc>()..add(SeriesEvent.serieCalled(movieOrSerie.id)),
      child: BlocBuilder<SeriesBloc, SeriesState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.map(
            initial: (_) => const MovieLoadingWidget(),
            loading: (_) => const MovieLoadingWidget(),
            loadSuccess: (_) => null,
            loadFailure: (_) => const MovieErrorWidget(),
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
  }
}
