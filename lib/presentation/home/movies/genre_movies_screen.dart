import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/movies/movies_bloc.dart';
import '../../../domain/home/movies/genres/genre.dart';
import '../../../infrastructure/core/credentials.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/component_widgets/cancel_button_widget.dart';
import '../widgets/build_show_info_modal_bottom_sheet_widget.dart';

class GenreMoviesScreen extends StatelessWidget {
  final Genre genre;

  const GenreMoviesScreen({
    Key key,
    @required this.genre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;
    final appTextTheme = Theme.of(context).textTheme;
    // final lang = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const CancelButton(),
        title: Text(
          genre.name,
          style: TextStyle(
              fontFamily: appTextTheme.headline5.fontFamily,
              fontSize: 16.0,
              fontWeight: appTextTheme.headline5.fontWeight,
              color: appTextTheme.headline5.color),
        ),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<MoviesBloc>()..add(MoviesEvent.movieByGenreCalled(genre.id)),
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
    );
  }
}
