part of 'store_user_data_bloc.dart';

@freezed
abstract class StoreUserDataEvent with _$StoreUserDataEvent {
  const factory StoreUserDataEvent.created() = _Created;
  const factory StoreUserDataEvent.updated() = _Updated;
  const factory StoreUserDataEvent.deleted() = _Deleted;
}
