import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movingPictures/domain/home/series/series_interface.dart';

import '../../../../domain/home/shared_classes/genres/genre.dart';
import '../../../../domain/home/shared_classes/genres/genre_failure.dart';

part 'genres_bloc.freezed.dart';
part 'genres_event.dart';
part 'genres_state.dart';

@injectable
class GenresBloc extends Bloc<GenresEvent, GenresState> {
  final SeriesInterface seriesInterface;
  GenresBloc(this.seriesInterface) : super(const _Initial());

  @override
  Stream<GenresState> mapEventToState(
    GenresEvent event,
  ) async* {
    yield* event.map(
      getGenresCalled: (_) async* {
        yield const GenresState.loading();
        final failureOrGenres = await seriesInterface.getGenres();

        yield failureOrGenres.fold(
          (f) => GenresState.loadFailure(f),
          (genres) => GenresState.loadSuccess(genres),
        );
      },
    );
  }
}
