import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../application/home/series/favorite_series/favoriteseries_bloc.dart';
import '../../../../domain/home/series/serie/serie.dart';
import '../../../../injection.dart';
import '../../../core/app_colors.dart';
import '../../../core/app_localizations.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/language_constants.dart';

class SeriesFavoriteButtonWidget extends HookWidget {
  final Serie serie;
  const SeriesFavoriteButtonWidget({
    Key key,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;

    return BlocProvider(
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
              final isSerieEmpty = state.favoriteSeries
                  .where((e) => e.favoriteSerieId == serie.id);

              return SizedBox(
                child: RawMaterialButton(
                  onPressed: () async {
                    context.read<FavoriteseriesBloc>().add(isSerieEmpty.isEmpty
                        ? FavoriteseriesEvent.favoriteCreated(serie.id)
                        : FavoriteseriesEvent.favoriteDeleted(serie.id));
                  },
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        isSerieEmpty.isNotEmpty
                            ? favoriteFilledIcon
                            : favoriteIcon,
                        color: AppColors.white,
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        lang.translate(
                            isSerieEmpty.isNotEmpty ? favorited : favorite),
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
