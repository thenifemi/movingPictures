import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/home/movies/genres/genre.dart';
import '../../../../domain/home/movies/genres/genre_failure.dart';
import '../../../../domain/home/movies/movies_interface.dart';

part 'genres_bloc.freezed.dart';
part 'genres_event.dart';
part 'genres_state.dart';

@injectable
class GenresBloc extends Bloc<GenresEvent, GenresState> {
  final MoviesInterface moviesInterface;

  GenresBloc(this.moviesInterface) : super(const _Initial());

  @override
  Stream<GenresState> mapEventToState(
    GenresEvent event,
  ) async* {
    event.map(
      getGenresCalled: (_) async* {
        yield const GenresState.loading();
        final failureOrGenres = await moviesInterface.getGenre();

        yield failureOrGenres.fold(
          (f) => GenresState.loadFailure(f),
          (genres) => GenresState.loadSuccess(genres),
        );
      },
    );
  }
}
