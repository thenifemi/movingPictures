import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movingPictures/application/home/movies/favorite_movies/favoritemovies_bloc.dart';
import 'package:movingPictures/domain/home/movies/movie_sub/movie_sub.dart';
import 'package:movingPictures/injection.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

import '../../../domain/home/movies/movie/movie.dart';
import '../../../infrastructure/core/credentials.dart';
import '../../home/widgets/build_show_info_modal_bottom_sheet_widget.dart';
import '../app_colors.dart';
import '../app_localizations.dart';
import '../constants/constants.dart';
import '../constants/language_constants.dart';

class ShareButtonWidget extends StatelessWidget {
  final TextTheme appTextTheme;
  final Movie movie;

  const ShareButtonWidget({
    Key key,
    @required this.appTextTheme,
    @required this.movie,
  }) : super(key: key);

  Future<void> shareFunction({
    @required Movie movie,
  }) async {
    final request = await HttpClient()
        .getUrl(Uri.parse('$MOVIE_POSTER_PATH${movie.posterPath}'));
    final response = await request.close();
    final Uint8List bytes = await consolidateHttpClientResponseBytes(response);
    await WcFlutterShare.share(
      sharePopupTitle: movie.title,
      mimeType: 'image/jpg',
      bytesOfFile: bytes,
      text:
          "Hey! Check out ${movie.title} on Moving Pictures. Download the app now https://github.com/thenifemi/movingPictures",
      fileName: "${movie.title}.jpg",
    );
  }

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return SizedBox(
      child: RawMaterialButton(
        onPressed: () async => shareFunction(movie: movie),
        child: Column(
          children: [
            SvgPicture.asset(
              shareIcon,
              color: AppColors.white,
            ),
            const SizedBox(height: 5.0),
            Text(
              lang.translate(share),
              style: appTextTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButtonWidget extends HookWidget {
  final TextTheme appTextTheme;
  final Movie movie;
  const FavoriteButtonWidget({
    Key key,
    @required this.appTextTheme,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toggleState = useState(false);

    final lang = AppLocalizations.of(context);

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
            loading: (_) => const SizedBox(
              height: 30.0,
              child: CircularProgressIndicator(
                backgroundColor: AppColors.white,
              ),
            ),
            watchSuccess: (state) {
              if (state.favoriteMovies.contains(movie.id)) {
                toggleState.value = true;
              }

              return SizedBox(
                child: RawMaterialButton(
                  onPressed: () {
                    toggleState.value = !toggleState.value;
                    context.read<FavoritemoviesBloc>().add(
                          toggleState.value
                              ? FavoritemoviesEvent.favoriteCreated(movie.id)
                              : FavoritemoviesEvent.favoriteDeleted(movie.id),
                        );
                  },
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder: (child, animation) => ScaleTransition(
                      scale: animation,
                      child: child,
                    ),
                    child: toggleState.value
                        ? Column(
                            children: [
                              SvgPicture.asset(
                                favoriteFilledIcon,
                                color: AppColors.white,
                              ),
                              const SizedBox(height: 5.0),
                              Text(
                                lang.translate(favorite),
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

class InfoButtonWidget extends StatelessWidget {
  final Movie movie;
  final TextTheme appTextTheme;
  const InfoButtonWidget({
    Key key,
    @required this.appTextTheme,
    @required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);

    return SizedBox(
      child: RawMaterialButton(
        onPressed: () => buildShowInfoModalBottomSheet(
          appTextTheme: appTextTheme,
          context: context,
          movieId: movie.id,
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              infoIcon,
              color: AppColors.white,
            ),
            const SizedBox(height: 5.0),
            Text(
              lang.translate(info),
              style: appTextTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
