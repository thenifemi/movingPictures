part of 'store_user_data_bloc.dart';

@freezed
abstract class StoreUserDataState with _$StoreUserDataState {
  const factory StoreUserDataState.initial() = _Initial;
  const factory StoreUserDataState.actionInProgress() = _ActionInProgress;

  const factory StoreUserDataState.createFailure(
      AppUserDataFailure appUserDataFailure) = _CreateFailure;
  const factory StoreUserDataState.updateFailure(
      AppUserDataFailure appUserDataFailure) = _UpdateFailure;
  const factory StoreUserDataState.deleteFailure(
      AppUserDataFailure appUserDataFailure) = _DeleteFailure;

  const factory StoreUserDataState.createSuccess() = _CreateSuccess;
  const factory StoreUserDataState.updateSuccess() = _UpdateSuccess;
  const factory StoreUserDataState.deleteSuccess() = _DeleteSuccess;
}
