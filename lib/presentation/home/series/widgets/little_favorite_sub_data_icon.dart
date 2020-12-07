import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../application/home/series/favorite_series/favoriteseries_bloc.dart';
import '../../../../domain/home/series/serie/serie.dart';
import '../../../../injection.dart';
import '../../../core/app_colors.dart';
import '../../../core/constants/constants.dart';

class SeriesLitteFavoriteSubDataIcon extends StatelessWidget {
  const SeriesLitteFavoriteSubDataIcon({
    Key key,
    @required this.serie,
  }) : super(key: key);

  final Serie serie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15.0,
      child: BlocProvider(
        create: (context) => getIt<FavoriteseriesBloc>()
          ..add(const FavoriteseriesEvent.watchFavorites()),
        child: BlocBuilder<FavoriteseriesBloc, FavoriteseriesState>(
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
                final isMovieEmpty = state.favoriteSeries
                    .where((e) => e.favoriteSerieId == serie.id);

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
