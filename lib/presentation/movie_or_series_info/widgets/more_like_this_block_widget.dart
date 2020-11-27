import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/movies/movies/movies_bloc.dart';
import '../../../domain/home/movies/movie/movie.dart';
import '../../../domain/home/movies/movie_sub/movie_sub.dart';
import '../../../infrastructure/core/credentials.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../core/constants/language_constants.dart';
import '../../home/widgets/build_show_info_modal_bottom_sheet_widget.dart';

class MoreLikeThisBlock extends StatelessWidget {
  final Movie movie;
  const MoreLikeThisBlock({
    Key key,
    @required this.movie,
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
              create: (context) => getIt<MoviesBloc>()
                ..add(MoviesEvent.similarMoviesCalled(movie.id)),
              child: BlocBuilder<MoviesBloc, MoviesState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => const MovieLoadingWidget(),
                    loading: (_) => const MovieLoadingWidget(),
                    loadSuccess: (state) {
                      final movies = state.movies;
                      return Movies(
                        itemWidth: itemWidth,
                        itemHeight: itemHeight,
                        appTextTheme: appTextTheme,
                        movies: movies,
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
          ),
        ],
      ),
    );
  }
}

class Movies extends StatelessWidget {
  const Movies({
    Key key,
    @required this.itemWidth,
    @required this.itemHeight,
    @required this.appTextTheme,
    @required this.movies,
  }) : super(key: key);

  final double itemWidth;
  final double itemHeight;
  final TextTheme appTextTheme;
  final List<MovieSub> movies;

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
                child: Image.network(
                  "$MOVIE_POSTER_PATH${movie.poster_path}",
                  fit: BoxFit.fill,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
