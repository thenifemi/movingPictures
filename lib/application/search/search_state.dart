part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loadSuccess(
      List<Either<MovieSub, SerieSub>> moviesOrSeries) = _LoadSuccess;

  const factory SearchState.loadFailure(MovieFailure movieFailure) =
      _LoadFailure;
}
