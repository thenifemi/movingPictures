import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/home/movies/movies_bloc.dart';
import '../../../domain/home/movies/movie.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';
import '../../../infrastructure/core/credentials.dart';

class TopTenBlockWidget extends StatelessWidget {
  final String moviesOrSeries;
  final MoviesEvent moviesEvent;
  final Function showInfoBottomSheet;

  const TopTenBlockWidget({
    Key key,
    @required this.moviesOrSeries,
    @required this.moviesEvent,
    @required this.showInfoBottomSheet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    final List _numberIcons = [
      number1Icon,
      number2Icon,
      number3Icon,
      number4Icon,
      number5Icon,
      number6Icon,
      number7Icon,
      number8Icon,
      number9Icon,
      number0Icon,
    ];

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
                  moviesOrSeries: moviesOrSeries,
                  numberIcons: _numberIcons,
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
    @required this.moviesOrSeries,
    @required List numberIcons,
    @required this.showInfoBottomSheet,
  })  : _numberIcons = numberIcons,
        super(key: key);

  final List<Movie> movies;
  final AppLocalizations lang;
  final String moviesOrSeries;
  final List _numberIcons;
  final Function showInfoBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "${lang.translate(top10)} ${lang.translate(moviesOrSeries)}",
            style: const TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          height: MediaQuery.of(context).size.height / 3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, i) {
              final movie = movies[i];
              final _number = _numberIcons[i];

              return GestureDetector(
                onTap: () => showInfoBottomSheet(),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 10.0),
                      width: MediaQuery.of(context).size.height / 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.network(
                          "$MOVIE_POSTER_PATH${movie.poster_path}",
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          _number.toString(),
                          color: AppColors.red,
                          height: 100.0,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
