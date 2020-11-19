import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/movies/movies_bloc.dart';
import '../../../domain/home/movies/movie.dart';
import '../../../infrastructure/core/credentials.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import 'build_show_info_modal_bottom_sheet_widget.dart';

class RegularBlockWidget extends StatelessWidget {
  final String blockName;
  final MoviesEvent moviesEvent;
  final Function showInfoBottomSheet;

  const RegularBlockWidget({
    Key key,
    @required this.blockName,
    @required this.showInfoBottomSheet,
    @required this.moviesEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return BlocProvider(
      create: (context) => getIt<MoviesBloc>()..add(moviesEvent),
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          return BlocBuilder<MoviesBloc, MoviesState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => Container(
                  height: 100.0,
                  color: AppColors.white,
                ),
                loading: (_) => Container(
                  height: 100.0,
                  color: AppColors.gray,
                ),
                loadSuccess: (state) => MovieData(
                  lang: lang,
                  blockName: blockName,
                  showInfoBottomSheet: showInfoBottomSheet,
                  movies: state.movies,
                ),
                loadFailure: (_) => Container(
                  height: 100.0,
                  color: AppColors.red,
                ),
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
    @required this.lang,
    @required this.blockName,
    @required this.showInfoBottomSheet,
  }) : super(key: key);

  final List<Movie> movies;
  final AppLocalizations lang;
  final String blockName;
  final Function showInfoBottomSheet;

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

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
                  movie: movie,
                ),
                child: Container(
                  padding: const EdgeInsets.only(right: 10.0),
                  width: MediaQuery.of(context).size.height / 7,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      "$MOVIE_POSTER_PATH${movie.poster_path}",
                      fit: BoxFit.fill,
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
