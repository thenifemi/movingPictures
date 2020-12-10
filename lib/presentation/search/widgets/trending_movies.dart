import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/movies/movies/movies_bloc.dart';
import '../../../domain/search/search.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../core/component_widgets/poster_image_widget.dart';
import '../../home/movies/widgets/build_show_info_modal_bottom_sheet_widget.dart';

class TrendingMovies extends StatelessWidget {
  const TrendingMovies({
    Key key,
    @required this.movieOrSerie,
  }) : super(key: key);

  final Search movieOrSerie;

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) =>
          getIt<MoviesBloc>()..add(MoviesEvent.movieCalled(movieOrSerie.id)),
      child: BlocBuilder<MoviesBloc, MoviesState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.map(
            initial: (_) => const MovieLoadingWidget(),
            loading: (_) => const MovieLoadingWidget(),
            loadSuccess: (_) => null,
            loadFailure: (_) => const MovieErrorWidget(),
            loadSuccessforMovie: (state) {
              final movie = state.movie;

              return GestureDetector(
                onTap: () => buildShowInfoModalBottomSheet(
                  appTextTheme: appTextTheme,
                  context: context,
                  movieId: movie.id,
                ),
                child: Tooltip(
                  message: movie.title,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: PosterImageWidget(movieOrSeries: movie),
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
