import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/home/movies/movies_bloc.dart';
import '../../../domain/home/movies/movie.dart';
import '../../../infrastructure/core/credentials.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';
import 'build_show_info_modal_bottom_sheet_widget.dart';

class TopTenBlockWidget extends StatelessWidget {
  final MoviesEvent moviesEvent;

  const TopTenBlockWidget({
    Key key,
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
  }) : super(key: key);

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "${lang.translate(top10)} Rated",
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
                onTap: () => buildShowInfoModalBottomSheet(
                  context: context,
                  appTextTheme: appTextTheme,
                  movieId: movie.id,
                ),
                child: Tooltip(
                  message: movie.title,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 10.0),
                        width: MediaQuery.of(context).size.height / 5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image.network(
                            "$MOVIE_POSTER_PATH${movie.poster_path}",
                            fit: BoxFit.fill,
                            loadingBuilder: (context, child, loadingProgress) {
                              if (loadingProgress == null) return child;
                              return Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes
                                      : null,
                                ),
                              );
                            },
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
