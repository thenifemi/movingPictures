import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/movies/movies/movies_bloc.dart';
import '../../../domain/home/movies/movie/movie.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import '../../core/component_widgets/favorite_button.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../core/component_widgets/poster_image_widget.dart';
import '../../core/component_widgets/small_buttons.dart';
import '../../core/constants/language_constants.dart';

class BannerBlockWidget extends StatelessWidget {
  const BannerBlockWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
        create: (context) =>
            getIt<MoviesBloc>()..add(const MoviesEvent.movieCalled(497582)),
        child: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const MovieLoadingWidget(),
              loading: (_) => const MovieLoadingWidget(),
              loadSuccessforMovie: (state) {
                final movie = state.movie;

                return BannerMovie(
                  movie: movie,
                  appTextTheme: appTextTheme,
                );
              },
              loadFailure: (_) => Container(
                height: 100.0,
                color: AppColors.red,
              ),
              loadSuccess: (_) => null,
            );
          },
        ));
  }
}

class BannerMovie extends StatelessWidget {
  const BannerMovie({
    Key key,
    @required this.movie,
    @required this.appTextTheme,
  }) : super(key: key);

  final Movie movie;
  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.6,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            foregroundDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.black.withOpacity(0.1),
                  AppColors.black.withOpacity(0.9)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: PosterImageWidget(movie: movie),
            ),
          ),
          BottomItems(
            appTextTheme: appTextTheme,
            movie: movie,
          ),
        ],
      ),
    );
  }
}

class BottomItems extends StatelessWidget {
  const BottomItems({
    Key key,
    @required this.movie,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FavoriteButtonWidget(
                movie: movie,
              ),
              Container(
                height: 40.0,
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.white,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      lang.translate(nifemiRecommends),
                      style: appTextTheme.headline4,
                    ),
                    const SizedBox(width: 5.0),
                    const Icon(
                      Icons.verified_outlined,
                      color: AppColors.red,
                      size: 22.0,
                    )
                  ],
                ),
              ),
              InfoButtonWidget(
                appTextTheme: appTextTheme,
                movie: movie,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
