part of 'casts_bloc.dart';

@freezed
abstract class CastsState with _$CastsState {
  const factory CastsState.initial() = _Initial;
  const factory CastsState.loading() = _Loading;
  const factory CastsState.loadSuccess(List<Cast> casts) = _LoadSuccess;
  const factory CastsState.loadFailure(CastFailure castFailure) = _LoadFailure;
}
