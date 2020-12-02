part of 'favoritemovies_bloc.dart';

@freezed
abstract class FavoritemoviesEvent with _$FavoritemoviesEvent {
  const factory FavoritemoviesEvent.started() = _Started;
}