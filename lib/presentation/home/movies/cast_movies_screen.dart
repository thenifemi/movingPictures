import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/movies/movies/movies_bloc.dart';
import '../../../domain/home/movies/movie_sub/movie_sub.dart';
import '../../../domain/home/shared_classes/cast/cast.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/component_widgets/cancel_button_widget.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../core/component_widgets/poster_image_widget.dart';
import 'widgets/build_show_info_modal_bottom_sheet_widget.dart';

class CastMoviesScreen extends StatelessWidget {
  final Cast cast;

  const CastMoviesScreen({
    Key key,
    @required this.cast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const CancelButton(),
        title: Text(cast.name, style: appTextTheme.headline5),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<MoviesBloc>()..add(MoviesEvent.movieByCastIdCalled(cast.id)),
        child: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const MovieLoadingWidget(),
              loading: (_) => const MovieLoadingWidget(),
              loadSuccess: (state) {
                final movies = state.movies;

                return Movies(
                  movies: movies,
                  appTextTheme: appTextTheme,
                );
              },
              loadFailure: (_) => Container(
                height: 100.0,
                color: AppColors.red,
              ),
              loadSuccessforMovie: (_) => null,
            );
          },
        ),
      ),
    );
  }
}

class Movies extends StatelessWidget {
  const Movies({
    Key key,
    @required this.movies,
    @required this.appTextTheme,
  }) : super(key: key);

  final List<MovieSub> movies;
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
          movies.length,
          (i) {
            final movie = movies[i];
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
                  child: PosterImageWidget(movie: movie),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
