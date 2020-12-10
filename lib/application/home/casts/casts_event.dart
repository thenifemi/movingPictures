part of 'casts_bloc.dart';

@freezed
abstract class CastsEvent with _$CastsEvent {
  const factory CastsEvent.getCastCalled(int castId) = _GetCastCalled;
}
