part of 'genres_bloc.dart';

@freezed
abstract class GenresEvent with _$GenresEvent {
  const factory GenresEvent.getGenresCalled() = _GetGenresCalled;
}
