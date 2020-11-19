part of 'genres_bloc.dart';

@freezed
abstract class GenresState with _$GenresState {
  const factory GenresState.initial() = _Initial;
  const factory GenresState.loading() = _Loading;
  const factory GenresState.loadSuccess(List<Genre> genres) = _LoadSuccess;
  const factory GenresState.loadFailure(GenreFailure genreFailure) =
      _LoadFailure;
}
