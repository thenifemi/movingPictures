import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movingPictures/presentation/core/component_widgets/movie_loading_wigdet.dart';

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
    final toggleState = useState(false);

    final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
      create: (context) => getIt<FavoritemoviesBloc>()
        ..add(const FavoritemoviesEvent.watchFavorites()),
      child: BlocConsumer<FavoritemoviesBloc, FavoritemoviesState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => Container(),
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            loading: (_) => const MovieLoadingWidget(),
            watchSuccess: (state) {
              final isMovieEmpty = state.favoriteMovies
                  .where((e) => e.favoriteMovieId == movie.id);
              if (isMovieEmpty.isNotEmpty) {
                toggleState.value = true;
              }

              return SizedBox(
                child: RawMaterialButton(
                  onPressed: () {
                    context.read<FavoritemoviesBloc>().add(
                          toggleState.value == false
                              ? FavoritemoviesEvent.favoriteCreated(movie.id)
                              : FavoritemoviesEvent.favoriteDeleted(movie.id),
                        );
                    toggleState.value = !toggleState.value;
                  },
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) => ScaleTransition(
                      scale: animation,
                      child: child,
                    ),
                    child: toggleState.value == true
                        ? Column(
                            children: [
                              SvgPicture.asset(
                                favoriteFilledIcon,
                                color: AppColors.white,
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                "favorited",
                                style: appTextTheme.subtitle1,
                              ),
                            ],
                          )
                        : Column(
                            children: [
                              SvgPicture.asset(
                                favoriteIcon,
                                color: AppColors.white,
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                lang.translate(favorite),
                                style: appTextTheme.subtitle1,
                              ),
                            ],
                          ),
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
