import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/home/movies/favorite_movies_interface.dart';
import '../../../../domain/home/movies/movie/movies_failure.dart';
import '../../../../domain/home/movies/movie_sub/movie_sub.dart';

part 'favoritemovies_bloc.freezed.dart';
part 'favoritemovies_event.dart';
part 'favoritemovies_state.dart';

@injectable
class FavoritemoviesBloc
    extends Bloc<FavoritemoviesEvent, FavoritemoviesState> {
  final FavoriteMoviesInterface favoriteMoviesInterface;
  FavoritemoviesBloc(this.favoriteMoviesInterface) : super(const _Initial());

  @override
  Stream<FavoritemoviesState> mapEventToState(
    FavoritemoviesEvent event,
  ) async* {
    yield* event.map(
      favoriteCreated: (e) async* {
        yield const FavoritemoviesState.loading();
        final failureOrSuccess =
            await favoriteMoviesInterface.createFavoriteMovie(e.movieSub);

        yield failureOrSuccess.fold(
          (f) => FavoritemoviesState.failure(f),
          (_) => const FavoritemoviesState.createSuccess(),
        );
      },
      favoriteDeleted: (e) async* {
        yield const FavoritemoviesState.loading();
        final failureOrSuccess =
            await favoriteMoviesInterface.deleteFavoriteMovie(e.movieSub);

        yield failureOrSuccess.fold(
          (f) => FavoritemoviesState.failure(f),
          (_) => const FavoritemoviesState.deleteSuccess(),
        );
      },
    );
  }
}
