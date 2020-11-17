import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:movingPictures/domain/home/movies/movies_interface.dart';

import '../../../domain/home/movies/movie.dart';
import '../../../domain/home/movies/movies_failure.dart';

part 'movies_bloc.freezed.dart';
part 'movies_event.dart';
part 'movies_state.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final MoviesInterface moviesInterface;
  MoviesBloc(this.moviesInterface) : super(MoviesState.initial());

  @override
  Stream<MoviesState> mapEventToState(
    MoviesEvent event,
  ) async* {
    yield* event.map(
      movieTypeCalled: (e) async* {
        Either<MovieFailure, List<Movie>> failureOrSuccess;

        yield state.copyWith(
          isLoading: true,
          failureOrSuccessOption: none(),
        );

        final movieListType = event.maybeMap(
          orElse: null,
          movieTypeCalled: (movie) => movie.movieListType,
        );

        failureOrSuccess =
            await moviesInterface.getMovieListType(movieListType);
        yield state.copyWith(
          isLoading: false,
          showErrorMessages: true,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      movieByGenreCalled: (e) async* {
        Either<MovieFailure, List<Movie>> failureOrSuccess;

        yield state.copyWith(
          isLoading: true,
          failureOrSuccessOption: none(),
        );

        final movieGenreId = event.maybeMap(
          orElse: null,
          movieByGenreCalled: (movie) => movie.movieGenreId,
        );

        failureOrSuccess = await moviesInterface.getMovieByGenre(movieGenreId);

        yield state.copyWith(
          isLoading: false,
          showErrorMessages: true,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
