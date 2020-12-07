import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../application/home/movies/favorite_movies/favoritemovies_bloc.dart';
import '../../../../domain/home/movies/movie/movie.dart';
import '../../../../injection.dart';
import '../../../core/app_colors.dart';
import '../../../core/constants/constants.dart';

class LitteFavoriteSubDataIcon extends StatelessWidget {
  const LitteFavoriteSubDataIcon({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.0,
      child: BlocProvider(
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

                return isMovieEmpty.isNotEmpty
                    ? SvgPicture.asset(
                        favoriteFilledIcon,
                        color: AppColors.white,
                      )
                    : const SizedBox();
              },
            );
          },
        ),
      ),
    );
  }
}
