import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/home/movies/genres/genres_bloc.dart';
import '../../../../domain/home/shared_classes/genres/genre.dart';
import '../../../../injection.dart';
import '../../../core/app_colors.dart';
import '../../../core/component_widgets/movie_loading_wigdet.dart';
import '../../../routes/router.gr.dart';

class AllGenresBlock extends StatelessWidget {
  const AllGenresBlock({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "All Genres",
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 10.0),
          BlocProvider(
            create: (context) =>
                getIt<GenresBloc>()..add(const GenresEvent.getGenresCalled()),
            child: BlocBuilder<GenresBloc, GenresState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const MovieLoadingWidget(),
                  loading: (_) => const MovieLoadingWidget(),
                  loadSuccess: (state) {
                    final genres = state.genres;
                    return Genres(
                      genres: genres,
                      appTextTheme: appTextTheme,
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
        ],
      ),
    );
  }
}

class Genres extends StatelessWidget {
  const Genres({
    Key key,
    @required this.genres,
    @required this.appTextTheme,
  }) : super(key: key);

  final List<Genre> genres;
  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 8.0,
      spacing: 10,
      children: genres
          .map(
            (genre) => GestureDetector(
              onTap: () => ExtendedNavigator.of(context)
                  .pushGenreMoviesScreen(genre: genre),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 2.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.white),
                  borderRadius: BorderRadius.circular(3.0),
                ),
                child: Text(
                  genre.name,
                  style: TextStyle(
                      fontFamily: appTextTheme.subtitle1.fontFamily,
                      fontWeight: FontWeight.w600,
                      color: appTextTheme.subtitle1.color,
                      fontSize: 20.0),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
