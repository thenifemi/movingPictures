import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/movies/movies/movies_bloc.dart';
import '../../../domain/home/movies/movie_sub/movie_sub.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../core/component_widgets/poster_image_widget.dart';
import 'build_show_info_modal_bottom_sheet_widget.dart';

class RegularBlockWidget extends StatelessWidget {
  final String blockName;
  final MoviesEvent moviesEvent;

  const RegularBlockWidget({
    Key key,
    @required this.blockName,
    @required this.moviesEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MoviesBloc>()..add(moviesEvent),
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          return BlocBuilder<MoviesBloc, MoviesState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const MovieLoadingWidget(),
                loading: (_) => const MovieLoadingWidget(),
                loadSuccess: (state) => MovieData(
                  blockName: blockName,
                  movies: state.movies,
                ),
                loadFailure: (_) => Container(
                  height: 100.0,
                  color: AppColors.red,
                ),
                loadSuccessforMovie: (_) => null,
              );
            },
          );
        },
      ),
    );
  }
}

class MovieData extends StatelessWidget {
  const MovieData({
    Key key,
    @required this.movies,
    @required this.blockName,
  }) : super(key: key);

  final List<MovieSub> movies;
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
            lang.translate(blockName),
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
            itemCount: movies.length,
            itemBuilder: (context, i) {
              final movie = movies[i];
              return GestureDetector(
                onTap: () => buildShowInfoModalBottomSheet(
                  context: context,
                  appTextTheme: appTextTheme,
                  movieId: movie.id,
                ),
                child: Tooltip(
                  message: movie.title,
                  child: Container(
                    padding: const EdgeInsets.only(right: 10.0),
                    width: MediaQuery.of(context).size.width / 3.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: PosterImageWidget(movie: movie),
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
