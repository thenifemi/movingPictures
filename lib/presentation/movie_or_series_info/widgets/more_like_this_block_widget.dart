import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movingPictures/application/home/movies/movies_bloc.dart';
import 'package:movingPictures/domain/home/movies/movie.dart';
import 'package:movingPictures/infrastructure/core/credentials.dart';
import 'package:movingPictures/presentation/home/widgets/build_show_info_modal_bottom_sheet_widget.dart';

import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import '../../core/constants/constants.dart';
import '../../core/constants/language_constants.dart';

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
      height: MediaQuery.of(context).size.height / 1.1,
      decoration: const BoxDecoration(
        color: AppColors.black,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              decoration: const BoxDecoration(
                  border: Border(
                top: BorderSide(width: 5.0, color: AppColors.red),
              )),
              child: Text(
                lang.translate(morelikethis),
                style: TextStyle(
                    fontFamily: appTextTheme.headline5.fontFamily,
                    fontSize: 14.0,
                    fontWeight: appTextTheme.headline5.fontWeight,
                    color: appTextTheme.headline5.color),
              ),
            ),
          ),
          Expanded(
            child: BlocProvider(
              create: (context) => getIt<MoviesBloc>()
                ..add(MoviesEvent.similarMoviesCalled(movie.id)),
              child: BlocBuilder<MoviesBloc, MoviesState>(
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
                    loadSuccess: (state) {
                      return Container(
                        height: size.height,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: GridView.count(
                          childAspectRatio: itemWidth / itemHeight,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          physics: const BouncingScrollPhysics(),
                          crossAxisCount: 3,
                          children: List.generate(
                            state.movies.length,
                            (i) {
                              final movie = state.movies[i];
                              return GestureDetector(
                                onTap: () => buildShowInfoModalBottomSheet(
                                  appTextTheme: appTextTheme,
                                  context: context,
                                  movie: movie,
                                ),
                                child: Tooltip(
                                  message: movie.title,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5.0),
                                    child: Image.network(
                                      "$MOVIE_POSTER_PATH${movie.poster_path}",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                    loadFailure: (_) => Container(
                      height: 100.0,
                      color: AppColors.red,
                    ),
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
