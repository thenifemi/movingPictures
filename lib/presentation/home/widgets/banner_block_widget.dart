import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/movies/movies_bloc.dart';
import '../../../infrastructure/core/credentials.dart';
import '../../../injection.dart';
import '../../core/app_colors.dart';
import '../../core/app_localizations.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../core/component_widgets/primary_button_widget.dart';
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
        create: (context) => getIt<MoviesBloc>()
          ..add(const MoviesEvent.bannerMovieCalled(152601)),
        child: BlocBuilder<MoviesBloc, MoviesState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const MovieLoadingWidget(),
              loading: (_) => const MovieLoadingWidget(),
              loadSuccess: (_) => null,
              loadSuccessforBannerMovie: (state) {
                final movie = state.movie;

                return SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        width: double.infinity,
                        foregroundDecoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              AppColors.black.withOpacity(0.9)
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            "$MOVIE_POSTER_PATH${movie.poster_path}",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      BottomItems(appTextTheme: appTextTheme),
                    ],
                  ),
                );
              },
              loadFailure: (_) => Container(
                height: 100.0,
                color: AppColors.red,
              ),
            );
          },
        ));
  }
}

class BottomItems extends StatelessWidget {
  const BottomItems({
    Key key,
    @required this.appTextTheme,
  }) : super(key: key);

  final TextTheme appTextTheme;

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 40.0,
          width: MediaQuery.of(context).size.width / 1.6,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
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
                Icons.verified,
                color: AppColors.red,
                size: 25.0,
              )
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FavoriteButtonWidget(
                appTextTheme: appTextTheme,
                onPressed: () {},
              ),
              SizedBox(
                height: 40.0,
                width: 150.0,
                child: PrimaryButton(
                  appTextTheme: appTextTheme,
                  name: lang.translate(watchTrailer),
                  color: AppColors.white,
                  onpressed: () {},
                  isFullButton: false,
                ),
              ),
              InfoButtonWidget(
                appTextTheme: appTextTheme,
                movie: null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
