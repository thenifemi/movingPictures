import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/home/movies/favorite_movies/favoritemovies_bloc.dart';
import '../../application/home/movies/movies/movies_bloc.dart';
import '../../domain/home/movies/favorite_movies/favorite_movies.dart';
import '../../injection.dart';
import '../core/app_colors.dart';
import '../core/component_widgets/movie_loading_wigdet.dart';
import '../core/component_widgets/poster_image_widget.dart';
import '../home/movies/widgets/build_show_info_modal_bottom_sheet_widget.dart';

class FavoriteMoviesTab extends StatelessWidget {
  const FavoriteMoviesTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) => getIt<FavoritemoviesBloc>()
        ..add(const FavoritemoviesEvent.watchFavorites()),
      child: BlocBuilder<FavoritemoviesBloc, FavoritemoviesState>(
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
              final favMovies = state.favoriteMovies;

              return FavMovies(
                favMovies: favMovies,
                appTextTheme: appTextTheme,
              );
            },
          );
        },
      ),
    );
  }
}

class FavMovies extends StatelessWidget {
  const FavMovies({
    Key key,
    @required this.favMovies,
    @required this.appTextTheme,
  }) : super(key: key);

  final List<FavoriteMovie> favMovies;
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
        key: Key(favMovies.length.toString()),
        childAspectRatio: itemWidth / itemHeight,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        physics: const BouncingScrollPhysics(),
        crossAxisCount: 3,
        children: List.generate(
          favMovies.length,
          (i) {
            final favMovie = favMovies[i];
            return BlocProvider(
              create: (context) => getIt<MoviesBloc>()
                ..add(MoviesEvent.movieCalled(favMovie.favoriteMovieId)),
              child: BlocBuilder<MoviesBloc, MoviesState>(
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
                            child: PosterImageWidget(movie: movie),
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
