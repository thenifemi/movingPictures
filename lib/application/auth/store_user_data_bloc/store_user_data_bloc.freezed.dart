// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'store_user_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StoreUserDataEventTearOff {
  const _$StoreUserDataEventTearOff();

// ignore: unused_element
  _Created created() {
    return const _Created();
  }

// ignore: unused_element
  _Updated updated() {
    return const _Updated();
  }

// ignore: unused_element
  _Deleted deleted() {
    return const _Deleted();
  }
}

/// @nodoc
// ignore: unused_element
const $StoreUserDataEvent = _$StoreUserDataEventTearOff();

/// @nodoc
mixin _$StoreUserDataEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result created(),
    @required Result updated(),
    @required Result deleted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result created(),
    Result updated(),
    Result deleted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result created(_Created value),
    @required Result updated(_Updated value),
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result created(_Created value),
    Result updated(_Updated value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $StoreUserDataEventCopyWith<$Res> {
  factory $StoreUserDataEventCopyWith(
          StoreUserDataEvent value, $Res Function(StoreUserDataEvent) then) =
      _$StoreUserDataEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreUserDataEventCopyWithImpl<$Res>
    implements $StoreUserDataEventCopyWith<$Res> {
  _$StoreUserDataEventCopyWithImpl(this._value, this._then);

  final StoreUserDataEvent _value;
  // ignore: unused_field
  final $Res Function(StoreUserDataEvent) _then;
}

/// @nodoc
abstract class _$CreatedCopyWith<$Res> {
  factory _$CreatedCopyWith(_Created value, $Res Function(_Created) then) =
      __$CreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreatedCopyWithImpl<$Res>
    extends _$StoreUserDataEventCopyWithImpl<$Res>
    implements _$CreatedCopyWith<$Res> {
  __$CreatedCopyWithImpl(_Created _value, $Res Function(_Created) _then)
      : super(_value, (v) => _then(v as _Created));

  @override
  _Created get _value => super._value as _Created;
}

/// @nodoc
class _$_Created implements _Created {
  const _$_Created();

  @override
  String toString() {
    return 'StoreUserDataEvent.created()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Created);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result created(),
    @required Result updated(),
    @required Result deleted(),
  }) {
    assert(created != null);
    assert(updated != null);
    assert(deleted != null);
    return created();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result created(),
    Result updated(),
    Result deleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (created != null) {
      return created();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result created(_Created value),
    @required Result updated(_Updated value),
    @required Result deleted(_Deleted value),
  }) {
    assert(created != null);
    assert(updated != null);
    assert(deleted != null);
    return created(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result created(_Created value),
    Result updated(_Updated value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class _Created implements StoreUserDataEvent {
  const factory _Created() = _$_Created;
}

/// @nodoc
abstract class _$UpdatedCopyWith<$Res> {
  factory _$UpdatedCopyWith(_Updated value, $Res Function(_Updated) then) =
      __$UpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdatedCopyWithImpl<$Res>
    extends _$StoreUserDataEventCopyWithImpl<$Res>
    implements _$UpdatedCopyWith<$Res> {
  __$UpdatedCopyWithImpl(_Updated _value, $Res Function(_Updated) _then)
      : super(_value, (v) => _then(v as _Updated));

  @override
  _Updated get _value => super._value as _Updated;
}

/// @nodoc
class _$_Updated implements _Updated {
  const _$_Updated();

  @override
  String toString() {
    return 'StoreUserDataEvent.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Updated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result created(),
    @required Result updated(),
    @required Result deleted(),
  }) {
    assert(created != null);
    assert(updated != null);
    assert(deleted != null);
    return updated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result created(),
    Result updated(),
    Result deleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result created(_Created value),
    @required Result updated(_Updated value),
    @required Result deleted(_Deleted value),
  }) {
    assert(created != null);
    assert(updated != null);
    assert(deleted != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result created(_Created value),
    Result updated(_Updated value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _Updated implements StoreUserDataEvent {
  const factory _Updated() = _$_Updated;
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$StoreUserDataEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;
}

/// @nodoc
class _$_Deleted implements _Deleted {
  const _$_Deleted();

  @override
  String toString() {
    return 'StoreUserDataEvent.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Deleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result created(),
    @required Result updated(),
    @required Result deleted(),
  }) {
    assert(created != null);
    assert(updated != null);
    assert(deleted != null);
    return deleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result created(),
    Result updated(),
    Result deleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result created(_Created value),
    @required Result updated(_Updated value),
    @required Result deleted(_Deleted value),
  }) {
    assert(created != null);
    assert(updated != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result created(_Created value),
    Result updated(_Updated value),
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements StoreUserDataEvent {
  const factory _Deleted() = _$_Deleted;
}

/// @nodoc
class _$StoreUserDataStateTearOff {
  const _$StoreUserDataStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _CreateFailure createFailure(AppUserDataFailure appUserDataFailure) {
    return _CreateFailure(
      appUserDataFailure,
    );
  }

// ignore: unused_element
  _UpdateFailure updateFailure(AppUserDataFailure appUserDataFailure) {
    return _UpdateFailure(
      appUserDataFailure,
    );
  }

// ignore: unused_element
  _DeleteFailure deleteFailure(AppUserDataFailure appUserDataFailure) {
    return _DeleteFailure(
      appUserDataFailure,
    );
  }

// ignore: unused_element
  _CreateSuccess createSuccess() {
    return const _CreateSuccess();
  }

// ignore: unused_element
  _UpdateSuccess updateSuccess() {
    return const _UpdateSuccess();
  }

// ignore: unused_element
  _DeleteSuccess deleteSuccess() {
    return const _DeleteSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $StoreUserDataState = _$StoreUserDataStateTearOff();

/// @nodoc
mixin _$StoreUserDataState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result createFailure(AppUserDataFailure appUserDataFailure),
    @required Result updateFailure(AppUserDataFailure appUserDataFailure),
    @required Result deleteFailure(AppUserDataFailure appUserDataFailure),
    @required Result createSuccess(),
    @required Result updateSuccess(),
    @required Result deleteSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result createFailure(AppUserDataFailure appUserDataFailure),
    Result updateFailure(AppUserDataFailure appUserDataFailure),
    Result deleteFailure(AppUserDataFailure appUserDataFailure),
    Result createSuccess(),
    Result updateSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result createFailure(_CreateFailure value),
    @required Result updateFailure(_UpdateFailure value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result updateSuccess(_UpdateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result createFailure(_CreateFailure value),
    Result updateFailure(_UpdateFailure value),
    Result deleteFailure(_DeleteFailure value),
    Result createSuccess(_CreateSuccess value),
    Result updateSuccess(_UpdateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $StoreUserDataStateCopyWith<$Res> {
  factory $StoreUserDataStateCopyWith(
          StoreUserDataState value, $Res Function(StoreUserDataState) then) =
      _$StoreUserDataStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoreUserDataStateCopyWithImpl<$Res>
    implements $StoreUserDataStateCopyWith<$Res> {
  _$StoreUserDataStateCopyWithImpl(this._value, this._then);

  final StoreUserDataState _value;
  // ignore: unused_field
  final $Res Function(StoreUserDataState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$StoreUserDataStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'StoreUserDataState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result createFailure(AppUserDataFailure appUserDataFailure),
    @required Result updateFailure(AppUserDataFailure appUserDataFailure),
    @required Result deleteFailure(AppUserDataFailure appUserDataFailure),
    @required Result createSuccess(),
    @required Result updateSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result createFailure(AppUserDataFailure appUserDataFailure),
    Result updateFailure(AppUserDataFailure appUserDataFailure),
    Result deleteFailure(AppUserDataFailure appUserDataFailure),
    Result createSuccess(),
    Result updateSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result createFailure(_CreateFailure value),
    @required Result updateFailure(_UpdateFailure value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result updateSuccess(_UpdateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result createFailure(_CreateFailure value),
    Result updateFailure(_UpdateFailure value),
    Result deleteFailure(_DeleteFailure value),
    Result createSuccess(_CreateSuccess value),
    Result updateSuccess(_UpdateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StoreUserDataState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$StoreUserDataStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'StoreUserDataState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result createFailure(AppUserDataFailure appUserDataFailure),
    @required Result updateFailure(AppUserDataFailure appUserDataFailure),
    @required Result deleteFailure(AppUserDataFailure appUserDataFailure),
    @required Result createSuccess(),
    @required Result updateSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result createFailure(AppUserDataFailure appUserDataFailure),
    Result updateFailure(AppUserDataFailure appUserDataFailure),
    Result deleteFailure(AppUserDataFailure appUserDataFailure),
    Result createSuccess(),
    Result updateSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result createFailure(_CreateFailure value),
    @required Result updateFailure(_UpdateFailure value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result updateSuccess(_UpdateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result createFailure(_CreateFailure value),
    Result updateFailure(_UpdateFailure value),
    Result deleteFailure(_DeleteFailure value),
    Result createSuccess(_CreateSuccess value),
    Result updateSuccess(_UpdateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements StoreUserDataState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$CreateFailureCopyWith<$Res> {
  factory _$CreateFailureCopyWith(
          _CreateFailure value, $Res Function(_CreateFailure) then) =
      __$CreateFailureCopyWithImpl<$Res>;
  $Res call({AppUserDataFailure appUserDataFailure});

  $AppUserDataFailureCopyWith<$Res> get appUserDataFailure;
}

/// @nodoc
class __$CreateFailureCopyWithImpl<$Res>
    extends _$StoreUserDataStateCopyWithImpl<$Res>
    implements _$CreateFailureCopyWith<$Res> {
  __$CreateFailureCopyWithImpl(
      _CreateFailure _value, $Res Function(_CreateFailure) _then)
      : super(_value, (v) => _then(v as _CreateFailure));

  @override
  _CreateFailure get _value => super._value as _CreateFailure;

  @override
  $Res call({
    Object appUserDataFailure = freezed,
  }) {
    return _then(_CreateFailure(
      appUserDataFailure == freezed
          ? _value.appUserDataFailure
          : appUserDataFailure as AppUserDataFailure,
    ));
  }

  @override
  $AppUserDataFailureCopyWith<$Res> get appUserDataFailure {
    if (_value.appUserDataFailure == null) {
      return null;
    }
    return $AppUserDataFailureCopyWith<$Res>(_value.appUserDataFailure,
        (value) {
      return _then(_value.copyWith(appUserDataFailure: value));
    });
  }
}

/// @nodoc
class _$_CreateFailure implements _CreateFailure {
  const _$_CreateFailure(this.appUserDataFailure)
      : assert(appUserDataFailure != null);

  @override
  final AppUserDataFailure appUserDataFailure;

  @override
  String toString() {
    return 'StoreUserDataState.createFailure(appUserDataFailure: $appUserDataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateFailure &&
            (identical(other.appUserDataFailure, appUserDataFailure) ||
                const DeepCollectionEquality()
                    .equals(other.appUserDataFailure, appUserDataFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appUserDataFailure);

  @override
  _$CreateFailureCopyWith<_CreateFailure> get copyWith =>
      __$CreateFailureCopyWithImpl<_CreateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result createFailure(AppUserDataFailure appUserDataFailure),
    @required Result updateFailure(AppUserDataFailure appUserDataFailure),
    @required Result deleteFailure(AppUserDataFailure appUserDataFailure),
    @required Result createSuccess(),
    @required Result updateSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return createFailure(appUserDataFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result createFailure(AppUserDataFailure appUserDataFailure),
    Result updateFailure(AppUserDataFailure appUserDataFailure),
    Result deleteFailure(AppUserDataFailure appUserDataFailure),
    Result createSuccess(),
    Result updateSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createFailure != null) {
      return createFailure(appUserDataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result createFailure(_CreateFailure value),
    @required Result updateFailure(_UpdateFailure value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result updateSuccess(_UpdateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return createFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result createFailure(_CreateFailure value),
    Result updateFailure(_UpdateFailure value),
    Result deleteFailure(_DeleteFailure value),
    Result createSuccess(_CreateSuccess value),
    Result updateSuccess(_UpdateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createFailure != null) {
      return createFailure(this);
    }
    return orElse();
  }
}

abstract class _CreateFailure implements StoreUserDataState {
  const factory _CreateFailure(AppUserDataFailure appUserDataFailure) =
      _$_CreateFailure;

  AppUserDataFailure get appUserDataFailure;
  _$CreateFailureCopyWith<_CreateFailure> get copyWith;
}

/// @nodoc
abstract class _$UpdateFailureCopyWith<$Res> {
  factory _$UpdateFailureCopyWith(
          _UpdateFailure value, $Res Function(_UpdateFailure) then) =
      __$UpdateFailureCopyWithImpl<$Res>;
  $Res call({AppUserDataFailure appUserDataFailure});

  $AppUserDataFailureCopyWith<$Res> get appUserDataFailure;
}

/// @nodoc
class __$UpdateFailureCopyWithImpl<$Res>
    extends _$StoreUserDataStateCopyWithImpl<$Res>
    implements _$UpdateFailureCopyWith<$Res> {
  __$UpdateFailureCopyWithImpl(
      _UpdateFailure _value, $Res Function(_UpdateFailure) _then)
      : super(_value, (v) => _then(v as _UpdateFailure));

  @override
  _UpdateFailure get _value => super._value as _UpdateFailure;

  @override
  $Res call({
    Object appUserDataFailure = freezed,
  }) {
    return _then(_UpdateFailure(
      appUserDataFailure == freezed
          ? _value.appUserDataFailure
          : appUserDataFailure as AppUserDataFailure,
    ));
  }

  @override
  $AppUserDataFailureCopyWith<$Res> get appUserDataFailure {
    if (_value.appUserDataFailure == null) {
      return null;
    }
    return $AppUserDataFailureCopyWith<$Res>(_value.appUserDataFailure,
        (value) {
      return _then(_value.copyWith(appUserDataFailure: value));
    });
  }
}

/// @nodoc
class _$_UpdateFailure implements _UpdateFailure {
  const _$_UpdateFailure(this.appUserDataFailure)
      : assert(appUserDataFailure != null);

  @override
  final AppUserDataFailure appUserDataFailure;

  @override
  String toString() {
    return 'StoreUserDataState.updateFailure(appUserDataFailure: $appUserDataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateFailure &&
            (identical(other.appUserDataFailure, appUserDataFailure) ||
                const DeepCollectionEquality()
                    .equals(other.appUserDataFailure, appUserDataFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appUserDataFailure);

  @override
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith =>
      __$UpdateFailureCopyWithImpl<_UpdateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result createFailure(AppUserDataFailure appUserDataFailure),
    @required Result updateFailure(AppUserDataFailure appUserDataFailure),
    @required Result deleteFailure(AppUserDataFailure appUserDataFailure),
    @required Result createSuccess(),
    @required Result updateSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return updateFailure(appUserDataFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result createFailure(AppUserDataFailure appUserDataFailure),
    Result updateFailure(AppUserDataFailure appUserDataFailure),
    Result deleteFailure(AppUserDataFailure appUserDataFailure),
    Result createSuccess(),
    Result updateSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(appUserDataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result createFailure(_CreateFailure value),
    @required Result updateFailure(_UpdateFailure value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result updateSuccess(_UpdateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result createFailure(_CreateFailure value),
    Result updateFailure(_UpdateFailure value),
    Result deleteFailure(_DeleteFailure value),
    Result createSuccess(_CreateSuccess value),
    Result updateSuccess(_UpdateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailure implements StoreUserDataState {
  const factory _UpdateFailure(AppUserDataFailure appUserDataFailure) =
      _$_UpdateFailure;

  AppUserDataFailure get appUserDataFailure;
  _$UpdateFailureCopyWith<_UpdateFailure> get copyWith;
}

/// @nodoc
abstract class _$DeleteFailureCopyWith<$Res> {
  factory _$DeleteFailureCopyWith(
          _DeleteFailure value, $Res Function(_DeleteFailure) then) =
      __$DeleteFailureCopyWithImpl<$Res>;
  $Res call({AppUserDataFailure appUserDataFailure});

  $AppUserDataFailureCopyWith<$Res> get appUserDataFailure;
}

/// @nodoc
class __$DeleteFailureCopyWithImpl<$Res>
    extends _$StoreUserDataStateCopyWithImpl<$Res>
    implements _$DeleteFailureCopyWith<$Res> {
  __$DeleteFailureCopyWithImpl(
      _DeleteFailure _value, $Res Function(_DeleteFailure) _then)
      : super(_value, (v) => _then(v as _DeleteFailure));

  @override
  _DeleteFailure get _value => super._value as _DeleteFailure;

  @override
  $Res call({
    Object appUserDataFailure = freezed,
  }) {
    return _then(_DeleteFailure(
      appUserDataFailure == freezed
          ? _value.appUserDataFailure
          : appUserDataFailure as AppUserDataFailure,
    ));
  }

  @override
  $AppUserDataFailureCopyWith<$Res> get appUserDataFailure {
    if (_value.appUserDataFailure == null) {
      return null;
    }
    return $AppUserDataFailureCopyWith<$Res>(_value.appUserDataFailure,
        (value) {
      return _then(_value.copyWith(appUserDataFailure: value));
    });
  }
}

/// @nodoc
class _$_DeleteFailure implements _DeleteFailure {
  const _$_DeleteFailure(this.appUserDataFailure)
      : assert(appUserDataFailure != null);

  @override
  final AppUserDataFailure appUserDataFailure;

  @override
  String toString() {
    return 'StoreUserDataState.deleteFailure(appUserDataFailure: $appUserDataFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteFailure &&
            (identical(other.appUserDataFailure, appUserDataFailure) ||
                const DeepCollectionEquality()
                    .equals(other.appUserDataFailure, appUserDataFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appUserDataFailure);

  @override
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith =>
      __$DeleteFailureCopyWithImpl<_DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result createFailure(AppUserDataFailure appUserDataFailure),
    @required Result updateFailure(AppUserDataFailure appUserDataFailure),
    @required Result deleteFailure(AppUserDataFailure appUserDataFailure),
    @required Result createSuccess(),
    @required Result updateSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return deleteFailure(appUserDataFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result createFailure(AppUserDataFailure appUserDataFailure),
    Result updateFailure(AppUserDataFailure appUserDataFailure),
    Result deleteFailure(AppUserDataFailure appUserDataFailure),
    Result createSuccess(),
    Result updateSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(appUserDataFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result createFailure(_CreateFailure value),
    @required Result updateFailure(_UpdateFailure value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result updateSuccess(_UpdateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result createFailure(_CreateFailure value),
    Result updateFailure(_UpdateFailure value),
    Result deleteFailure(_DeleteFailure value),
    Result createSuccess(_CreateSuccess value),
    Result updateSuccess(_UpdateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class _DeleteFailure implements StoreUserDataState {
  const factory _DeleteFailure(AppUserDataFailure appUserDataFailure) =
      _$_DeleteFailure;

  AppUserDataFailure get appUserDataFailure;
  _$DeleteFailureCopyWith<_DeleteFailure> get copyWith;
}

/// @nodoc
abstract class _$CreateSuccessCopyWith<$Res> {
  factory _$CreateSuccessCopyWith(
          _CreateSuccess value, $Res Function(_CreateSuccess) then) =
      __$CreateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateSuccessCopyWithImpl<$Res>
    extends _$StoreUserDataStateCopyWithImpl<$Res>
    implements _$CreateSuccessCopyWith<$Res> {
  __$CreateSuccessCopyWithImpl(
      _CreateSuccess _value, $Res Function(_CreateSuccess) _then)
      : super(_value, (v) => _then(v as _CreateSuccess));

  @override
  _CreateSuccess get _value => super._value as _CreateSuccess;
}

/// @nodoc
class _$_CreateSuccess implements _CreateSuccess {
  const _$_CreateSuccess();

  @override
  String toString() {
    return 'StoreUserDataState.createSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result createFailure(AppUserDataFailure appUserDataFailure),
    @required Result updateFailure(AppUserDataFailure appUserDataFailure),
    @required Result deleteFailure(AppUserDataFailure appUserDataFailure),
    @required Result createSuccess(),
    @required Result updateSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return createSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result createFailure(AppUserDataFailure appUserDataFailure),
    Result updateFailure(AppUserDataFailure appUserDataFailure),
    Result deleteFailure(AppUserDataFailure appUserDataFailure),
    Result createSuccess(),
    Result updateSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createSuccess != null) {
      return createSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result createFailure(_CreateFailure value),
    @required Result updateFailure(_UpdateFailure value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result updateSuccess(_UpdateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return createSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result createFailure(_CreateFailure value),
    Result updateFailure(_UpdateFailure value),
    Result deleteFailure(_DeleteFailure value),
    Result createSuccess(_CreateSuccess value),
    Result updateSuccess(_UpdateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createSuccess != null) {
      return createSuccess(this);
    }
    return orElse();
  }
}

abstract class _CreateSuccess implements StoreUserDataState {
  const factory _CreateSuccess() = _$_CreateSuccess;
}

/// @nodoc
abstract class _$UpdateSuccessCopyWith<$Res> {
  factory _$UpdateSuccessCopyWith(
          _UpdateSuccess value, $Res Function(_UpdateSuccess) then) =
      __$UpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateSuccessCopyWithImpl<$Res>
    extends _$StoreUserDataStateCopyWithImpl<$Res>
    implements _$UpdateSuccessCopyWith<$Res> {
  __$UpdateSuccessCopyWithImpl(
      _UpdateSuccess _value, $Res Function(_UpdateSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateSuccess));

  @override
  _UpdateSuccess get _value => super._value as _UpdateSuccess;
}

/// @nodoc
class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess();

  @override
  String toString() {
    return 'StoreUserDataState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result createFailure(AppUserDataFailure appUserDataFailure),
    @required Result updateFailure(AppUserDataFailure appUserDataFailure),
    @required Result deleteFailure(AppUserDataFailure appUserDataFailure),
    @required Result createSuccess(),
    @required Result updateSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result createFailure(AppUserDataFailure appUserDataFailure),
    Result updateFailure(AppUserDataFailure appUserDataFailure),
    Result deleteFailure(AppUserDataFailure appUserDataFailure),
    Result createSuccess(),
    Result updateSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result createFailure(_CreateFailure value),
    @required Result updateFailure(_UpdateFailure value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result updateSuccess(_UpdateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result createFailure(_CreateFailure value),
    Result updateFailure(_UpdateFailure value),
    Result deleteFailure(_DeleteFailure value),
    Result createSuccess(_CreateSuccess value),
    Result updateSuccess(_UpdateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements StoreUserDataState {
  const factory _UpdateSuccess() = _$_UpdateSuccess;
}

/// @nodoc
abstract class _$DeleteSuccessCopyWith<$Res> {
  factory _$DeleteSuccessCopyWith(
          _DeleteSuccess value, $Res Function(_DeleteSuccess) then) =
      __$DeleteSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteSuccessCopyWithImpl<$Res>
    extends _$StoreUserDataStateCopyWithImpl<$Res>
    implements _$DeleteSuccessCopyWith<$Res> {
  __$DeleteSuccessCopyWithImpl(
      _DeleteSuccess _value, $Res Function(_DeleteSuccess) _then)
      : super(_value, (v) => _then(v as _DeleteSuccess));

  @override
  _DeleteSuccess get _value => super._value as _DeleteSuccess;
}

/// @nodoc
class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess();

  @override
  String toString() {
    return 'StoreUserDataState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result createFailure(AppUserDataFailure appUserDataFailure),
    @required Result updateFailure(AppUserDataFailure appUserDataFailure),
    @required Result deleteFailure(AppUserDataFailure appUserDataFailure),
    @required Result createSuccess(),
    @required Result updateSuccess(),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result createFailure(AppUserDataFailure appUserDataFailure),
    Result updateFailure(AppUserDataFailure appUserDataFailure),
    Result deleteFailure(AppUserDataFailure appUserDataFailure),
    Result createSuccess(),
    Result updateSuccess(),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result actionInProgress(_ActionInProgress value),
    @required Result createFailure(_CreateFailure value),
    @required Result updateFailure(_UpdateFailure value),
    @required Result deleteFailure(_DeleteFailure value),
    @required Result createSuccess(_CreateSuccess value),
    @required Result updateSuccess(_UpdateSuccess value),
    @required Result deleteSuccess(_DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(createFailure != null);
    assert(updateFailure != null);
    assert(deleteFailure != null);
    assert(createSuccess != null);
    assert(updateSuccess != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result actionInProgress(_ActionInProgress value),
    Result createFailure(_CreateFailure value),
    Result updateFailure(_UpdateFailure value),
    Result deleteFailure(_DeleteFailure value),
    Result createSuccess(_CreateSuccess value),
    Result updateSuccess(_UpdateSuccess value),
    Result deleteSuccess(_DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements StoreUserDataState {
  const factory _DeleteSuccess() = _$_DeleteSuccess;
}
