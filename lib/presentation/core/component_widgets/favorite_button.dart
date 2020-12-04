import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/home/movies/favorite_movies/favoritemovies_bloc.dart';
import '../../../domain/home/movies/movie/movie.dart';
import '../../../injection.dart';
import '../app_colors.dart';
import '../app_localizations.dart';
import '../constants/constants.dart';
import '../constants/language_constants.dart';

class FavoriteButtonWidget extends HookWidget {
  final Movie movie;
  const FavoriteButtonWidget({
    Key key,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
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
              final isMovieEmpty = state.favoriteMovies
                  .where((e) => e.favoriteMovieId == movie.id);

              return SizedBox(
                child: RawMaterialButton(
                  onPressed: () async {
                    context.read<FavoritemoviesBloc>().add(isMovieEmpty.isEmpty
                        ? FavoritemoviesEvent.favoriteCreated(movie.id)
                        : FavoritemoviesEvent.favoriteDeleted(movie.id));
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        isMovieEmpty.isNotEmpty
                            ? favoriteFilledIcon
                            : favoriteIcon,
                        color: AppColors.white,
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        lang.translate(
                            isMovieEmpty.isNotEmpty ? favorited : favorite),
                        style: appTextTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
