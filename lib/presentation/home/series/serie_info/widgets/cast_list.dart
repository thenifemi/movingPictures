import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/home/series/casts/casts_bloc.dart';
import '../../../../../domain/home/series/serie/serie.dart';
import '../../../../../domain/home/shared_classes/cast/cast.dart';
import '../../../../../injection.dart';
import '../../../../core/app_colors.dart';
import '../../../../core/app_localizations.dart';
import '../../../../core/component_widgets/movie_loading_wigdet.dart';
import '../../../../core/constants/language_constants.dart';
import 'build_cast_modal_sheet.dart';

class CastList extends StatelessWidget {
  final Serie serie;
  const CastList({
    Key key,
    @required this.serie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            getIt<CastsBloc>()..add(CastsEvent.getCastCalled(serie.id)),
        child: BlocBuilder<CastsBloc, CastsState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const SizedBox(
                height: 30.0,
                child: MovieLoadingWidget(),
              ),
              loading: (_) => const SizedBox(
                height: 30.0,
                child: MovieLoadingWidget(),
              ),
              loadSuccess: (state) {
                final casts = state.casts;
                return CastData(casts: casts, serie: serie);
              },
              loadFailure: (_) => Container(
                height: 10.0,
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
    this.serie,
  }) : super(key: key);

  final List<Cast> casts;
  final Serie serie;

  @override
  Widget build(BuildContext context) {
    final appTextTheme = Theme.of(context).textTheme;
    final lang = AppLocalizations.of(context);

    return GestureDetector(
      onTap: () => buildCastModalSheet(
        serie: serie,
        context: context,
        casts: casts,
      ),
      child: SizedBox(
        height: 20.0,
        child: Row(
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
                itemCount: casts.length < 2 ? casts.length : 2,
                itemBuilder: (context, i) {
                  final cast = casts[i];
                  return Text(
                    "${cast.name}, ",
                    style: appTextTheme.subtitle1,
                    overflow: TextOverflow.ellipsis,
                  );
                },
              ),
            ),
            Text(
              "..${lang.translate(more)}",
              style: appTextTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
