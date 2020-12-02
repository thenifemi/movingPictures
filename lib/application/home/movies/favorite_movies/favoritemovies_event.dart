part of 'favoritemovies_bloc.dart';

@freezed
abstract class FavoritemoviesEvent with _$FavoritemoviesEvent {
  const factory FavoritemoviesEvent.favoriteCreated(MovieSub movieSub) =
      _FavoriteCreated;
  const factory FavoritemoviesEvent.favoriteDeleted(MovieSub movieSub) =
      _FavoriteDeleted;
}
