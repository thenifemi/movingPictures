import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/home/movies/favorite_movies_interface.dart';
import '../../../../domain/home/movies/movie/movie.dart';
import '../../../../domain/home/movies/movie/movies_failure.dart';

part 'favoritemovies_bloc.freezed.dart';
part 'favoritemovies_event.dart';
part 'favoritemovies_state.dart';

@injectable
class FavoritemoviesBloc
    extends Bloc<FavoritemoviesEvent, FavoritemoviesState> {
  final FavoriteMoviesInterface favoriteMoviesInterface;
  FavoritemoviesBloc(this.favoriteMoviesInterface) : super(const _Initial());

  StreamSubscription<Either<MovieFailure, List<Movie>>> favoriteMoviesStream;

  @override
  Stream<FavoritemoviesState> mapEventToState(
    FavoritemoviesEvent event,
  ) async* {
    yield* event.map(
      favoriteCreated: (e) async* {
        yield const FavoritemoviesState.loading();
        final failureOrSuccess =
            await favoriteMoviesInterface.createFavoriteMovie(e.movie);

        yield failureOrSuccess.fold(
          (f) => FavoritemoviesState.failure(f),
          (_) => const FavoritemoviesState.createSuccess(),
        );
      },
      favoriteDeleted: (e) async* {
        yield const FavoritemoviesState.loading();
        final failureOrSuccess =
            await favoriteMoviesInterface.deleteFavoriteMovie(e.movie);

        yield failureOrSuccess.fold(
          (f) => FavoritemoviesState.failure(f),
          (_) => const FavoritemoviesState.deleteSuccess(),
        );
      },
      watchFavorites: (e) async* {
        yield const FavoritemoviesState.loading();
        await favoriteMoviesStream?.cancel();

        favoriteMoviesStream = favoriteMoviesInterface
            .watchMovieFavorites()
            .listen((failureOrMovies) => add(
                  FavoritemoviesEvent.favoritesRecieved(failureOrMovies),
                ));

        yield favoriteMoviesStream;
      },
      favoritesRecieved: (e) async* {
        yield e.failureOrMovies.fold(
          (f) => FavoritemoviesState.failure(f),
          (movies) => FavoritemoviesState.watchSuccess(movies),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await favoriteMoviesStream?.cancel();
    return super.close();
  }
}
