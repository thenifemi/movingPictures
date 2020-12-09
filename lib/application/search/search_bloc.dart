import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/home/movies/movie/movies_failure.dart';
import '../../domain/home/movies/movie_sub/movie_sub.dart';
import '../../domain/home/series/serie_sub/serie_sub.dart';
import '../../domain/search/search_interface.dart';
import '../home/series/series/series_bloc.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchInterface searchInterface;
  SearchBloc(this.searchInterface) : super(const _Initial());

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    yield* event.map(trendingCalled: (e) async* {
      yield const SeriesState.loading();
      final failureOrMoviesOrSeries = await searchInterface.getTrending();

      yield failureOrMoviesOrSeries.fold((f) => SearchState.loadFailure(f),
          (moviesOrSeries) => SearchState.loadSuccess(moviesOrSeries));
    });
  }
}
