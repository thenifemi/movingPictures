import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../application/search/search_bloc.dart';
import '../../domain/search/search.dart';
import '../../injection.dart';
import '../core/app_colors.dart';
import '../core/component_widgets/movie_loading_wigdet.dart';
import '../core/constants/constants.dart';
import 'widgets/trending_movies.dart';
import 'widgets/trending_series.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          child: TextFormField(
            cursorColor: AppColors.white,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.search,
            style: const TextStyle(color: AppColors.white, fontSize: 18.0),
            decoration: InputDecoration(
              prefixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(searchIcon, color: Colors.grey)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 25.0),
              labelText: 'Search for a movie, series or genre',
              labelStyle: const TextStyle(color: Colors.grey, fontSize: 14.0),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              fillColor: AppColors.gray,
              filled: true,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<SearchBloc>()..add(const SearchEvent.trendingCalled()),
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => const MovieLoadingWidget(),
              loading: (_) => const MovieLoadingWidget(),
              loadSuccess: (state) => Trending(
                moviesOrSeries: state.moviesOrSeries,
              ),
              loadFailure: (_) => Container(
                height: 100.0,
                color: AppColors.red,
              ),
            );
          },
        ),
      ),
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
    final size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;

    return GridView.count(
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
    );
  }
}
