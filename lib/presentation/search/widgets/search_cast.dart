import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/home/casts/casts_bloc.dart';
import '../../../domain/search/search.dart';
import '../../../infrastructure/core/credentials.dart';
import '../../../injection.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import '../../routes/router.gr.dart';

class SearchCast extends StatelessWidget {
  const SearchCast({
    Key key,
    @required this.movieOrSerie,
  }) : super(key: key);

  final Search movieOrSerie;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<CastsBloc>()..add(CastsEvent.getCastCalled(movieOrSerie.id)),
      child: BlocBuilder<CastsBloc, CastsState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.map(
            initial: (_) => const MovieLoadingWidget(),
            loading: (_) => const MovieLoadingWidget(),
            loadSuccess: (state) {
              final person = state.cast;

              return GestureDetector(
                onTap: () => ExtendedNavigator.of(context)
                    .pushCastMoviesScreen(cast: person),
                child: Tooltip(
                  message: person.name,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      "$MOVIE_POSTER_PATH${person.profilePath}",
                      fit: BoxFit.cover,
                      errorBuilder: (context, e, error) =>
                          const Center(child: Icon(Icons.image_outlined)),
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              );
            },
            loadFailure: (_) => const MovieErrorWidget(),
          );
        },
      ),
    );
  }
}
