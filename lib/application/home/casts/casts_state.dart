part of 'casts_bloc.dart';

@freezed
abstract class CastsState with _$CastsState {
  const factory CastsState.initial() = _Initial;
  const factory CastsState.loading() = _Loading;
  const factory CastsState.loadSuccess(Cast cast) = _LoadSuccess;

  const factory CastsState.loadFailure(CastFailure castFailure) = _LoadFailure;
}
