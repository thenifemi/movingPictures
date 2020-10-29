// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  AccountAlreadyExists<T> accountAlreadyExists<T>({@required T failedValue}) {
    return AccountAlreadyExists<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountAlreadyExists(T failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountAlreadyExists(T failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountAlreadyExists(AccountAlreadyExists<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountAlreadyExists(AccountAlreadyExists<T> value),
    @required Result orElse(),
  });

  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
abstract class $AccountAlreadyExistsCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $AccountAlreadyExistsCopyWith(AccountAlreadyExists<T> value,
          $Res Function(AccountAlreadyExists<T>) then) =
      _$AccountAlreadyExistsCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$AccountAlreadyExistsCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $AccountAlreadyExistsCopyWith<T, $Res> {
  _$AccountAlreadyExistsCopyWithImpl(AccountAlreadyExists<T> _value,
      $Res Function(AccountAlreadyExists<T>) _then)
      : super(_value, (v) => _then(v as AccountAlreadyExists<T>));

  @override
  AccountAlreadyExists<T> get _value => super._value as AccountAlreadyExists<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(AccountAlreadyExists<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as T,
    ));
  }
}

/// @nodoc
class _$AccountAlreadyExists<T> implements AccountAlreadyExists<T> {
  const _$AccountAlreadyExists({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.accountAlreadyExists(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountAlreadyExists<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $AccountAlreadyExistsCopyWith<T, AccountAlreadyExists<T>> get copyWith =>
      _$AccountAlreadyExistsCopyWithImpl<T, AccountAlreadyExists<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result accountAlreadyExists(T failedValue),
  }) {
    assert(accountAlreadyExists != null);
    return accountAlreadyExists(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result accountAlreadyExists(T failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountAlreadyExists != null) {
      return accountAlreadyExists(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result accountAlreadyExists(AccountAlreadyExists<T> value),
  }) {
    assert(accountAlreadyExists != null);
    return accountAlreadyExists(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result accountAlreadyExists(AccountAlreadyExists<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (accountAlreadyExists != null) {
      return accountAlreadyExists(this);
    }
    return orElse();
  }
}

abstract class AccountAlreadyExists<T> implements ValueFailure<T> {
  const factory AccountAlreadyExists({@required T failedValue}) =
      _$AccountAlreadyExists<T>;

  @override
  T get failedValue;
  @override
  $AccountAlreadyExistsCopyWith<T, AccountAlreadyExists<T>> get copyWith;
}
