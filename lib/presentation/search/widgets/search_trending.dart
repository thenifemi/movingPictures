import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/search/search_bloc.dart';
import '../../../domain/search/search.dart';
import '../../core/component_widgets/movie_loading_wigdet.dart';
import 'trending_movies.dart';
import 'trending_series.dart';

class SearchResultsORTrending extends StatelessWidget {
  const SearchResultsORTrending({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const MovieLoadingWidget(),
          loading: (_) => const MovieLoadingWidget(),
          loadSuccess: (state) =>
              Trending(moviesOrSeries: state.moviesOrSeries),
          loadFailure: (_) => const MovieErrorWidget(),
          loadSuccessforQuery: (state) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.green,
            );
          },
        );
      },
    );
  }
}

class Trending extends StatelessWidget {
  const Trending({
    Key key,
    @required this.moviesOrSeries,
  }) : super(key: key);

  final List<Search> moviesOrSeries;

  @override
  Widget build(BuildContext context) {
    // final lang = AppLocalizations.of(context);
    final appTextTheme = Theme.of(context).textTheme;

    final size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;

    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Top Trending",
              style: appTextTheme.headline5,
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            childAspectRatio: itemWidth / itemHeight,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            crossAxisCount: 3,
            children: List.generate(
              moviesOrSeries.length,
              (i) {
                final movieOrSerie = moviesOrSeries[i];
                return movieOrSerie.mediaType == "movie"
                    ? TrendingMovies(movieOrSerie: movieOrSerie)
                    : TrendingSeries(movieOrSerie: movieOrSerie);
              },
            ),
          ),
        ),
      ],
    );
  }
}
