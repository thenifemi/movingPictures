import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/home/movies/movie.dart';
import '../../../domain/home/movies/movies_failure.dart';
import '../../../domain/home/movies/movies_interface.dart';

part 'movies_bloc.freezed.dart';
part 'movies_event.dart';
part 'movies_state.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MoviesInterface moviesInterface;
  MoviesBloc(this.moviesInterface) : super(const _Initial());

  @override
  Stream<MoviesState> mapEventToState(
    MoviesEvent event,
  ) async* {
    yield* event.map(
      movieTypeCalled: (e) async* {
        yield const MoviesState.loading();
        final failureOrMovies =
            await moviesInterface.getMovieListType(e.movieListType);

        yield failureOrMovies.fold(
          (f) => MoviesState.loadFailure(f),
          (movies) => MoviesState.loadSuccess(movies),
        );
      },
      movieByGenreCalled: (e) async* {
        yield const MoviesState.loading();
        final failureOrMovies =
            await moviesInterface.getMovieByGenre(e.movieGenreId);

        yield failureOrMovies.fold(
          (f) => MoviesState.loadFailure(f),
          (movies) => MoviesState.loadSuccess(movies),
        );
      },
      similarMoviesCalled: (e) async* {
        yield const MoviesState.loading();
        final failureOrMovies =
            await moviesInterface.getSimilarMovies(e.movieId);

        yield failureOrMovies.fold(
          (f) => MoviesState.loadFailure(f),
          (movies) => MoviesState.loadSuccess(movies),
        );
      },
      movieCalled: (e) async* {
        yield const MoviesState.loading();
        final failureOrMovies = await moviesInterface.getMovie(e.movieId);

        yield failureOrMovies.fold(
          (f) => MoviesState.loadFailure(f),
          (movie) => MoviesState.loadSuccessforMovie(movie),
        );
      },
    );
  }
}
