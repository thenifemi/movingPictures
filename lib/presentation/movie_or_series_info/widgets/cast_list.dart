import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movingPictures/application/home/movies/casts/casts_bloc.dart';
import 'package:movingPictures/domain/home/movies/cast/cast.dart';
import 'package:movingPictures/domain/home/movies/movie/movie.dart';
import 'package:movingPictures/injection.dart';
import 'package:movingPictures/presentation/core/app_colors.dart';
import 'package:movingPictures/presentation/core/component_widgets/movie_loading_wigdet.dart';

import '../../core/app_localizations.dart';
import '../../core/constants/language_constants.dart';

class CastList extends StatelessWidget {
  final int movieId;
  const CastList({
    Key key,
    @required this.movieId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<CastsBloc>()..add(CastsEvent.getCastCalled(movieId)),
        child: BlocBuilder<CastsBloc, CastsState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const MovieLoadingWidget(),
              loading: (_) => const MovieLoadingWidget(),
              loadSuccess: (state) {
                final casts = state.casts;

                return CastData(casts: casts);
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

class CastData extends StatelessWidget {
  const CastData({
    Key key,
    @required this.casts,
  }) : super(key: key);

  final List<Cast> casts;

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    final lang = AppLocalizations.of(context);

    return Row(
      children: [
        Text(
          "${lang.translate(starring)}: ",
          style: appTextTheme.subtitle2,
        ),
        SizedBox(
          height: 13.0,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, i) {
              final cast = casts[i];
              return Text(
                "$cast, ",
                style: appTextTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              );
            },
          ),
        ),
        Text(
          "..${lang.translate(more)}",
          style: appTextTheme.subtitle1,
        ),
      ],
    );
  }
}
