// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'genre_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GenreFailureTearOff {
  const _$GenreFailureTearOff();

// ignore: unused_element
  _Unexpected unexpected() {
    return const _Unexpected();
  }

// ignore: unused_element
  _NoInternetConnection noInternetConnection() {
    return const _NoInternetConnection();
  }
}

/// @nodoc
// ignore: unused_element
const $GenreFailure = _$GenreFailureTearOff();

/// @nodoc
mixin _$GenreFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result noInternetConnection(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result noInternetConnection(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected value),
    @required Result noInternetConnection(_NoInternetConnection value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected value),
    Result noInternetConnection(_NoInternetConnection value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $GenreFailureCopyWith<$Res> {
  factory $GenreFailureCopyWith(
          GenreFailure value, $Res Function(GenreFailure) then) =
      _$GenreFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$GenreFailureCopyWithImpl<$Res> implements $GenreFailureCopyWith<$Res> {
  _$GenreFailureCopyWithImpl(this._value, this._then);

  final GenreFailure _value;
  // ignore: unused_field
  final $Res Function(GenreFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$GenreFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc
class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'GenreFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result noInternetConnection(),
  }) {
    assert(unexpected != null);
    assert(noInternetConnection != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result noInternetConnection(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected value),
    @required Result noInternetConnection(_NoInternetConnection value),
  }) {
    assert(unexpected != null);
    assert(noInternetConnection != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected value),
    Result noInternetConnection(_NoInternetConnection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements GenreFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$NoInternetConnectionCopyWith<$Res> {
  factory _$NoInternetConnectionCopyWith(_NoInternetConnection value,
          $Res Function(_NoInternetConnection) then) =
      __$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoInternetConnectionCopyWithImpl<$Res>
    extends _$GenreFailureCopyWithImpl<$Res>
    implements _$NoInternetConnectionCopyWith<$Res> {
  __$NoInternetConnectionCopyWithImpl(
      _NoInternetConnection _value, $Res Function(_NoInternetConnection) _then)
      : super(_value, (v) => _then(v as _NoInternetConnection));

  @override
  _NoInternetConnection get _value => super._value as _NoInternetConnection;
}

/// @nodoc
class _$_NoInternetConnection implements _NoInternetConnection {
  const _$_NoInternetConnection();

  @override
  String toString() {
    return 'GenreFailure.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(),
    @required Result noInternetConnection(),
  }) {
    assert(unexpected != null);
    assert(noInternetConnection != null);
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(),
    Result noInternetConnection(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(_Unexpected value),
    @required Result noInternetConnection(_NoInternetConnection value),
  }) {
    assert(unexpected != null);
    assert(noInternetConnection != null);
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(_Unexpected value),
    Result noInternetConnection(_NoInternetConnection value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnection implements GenreFailure {
  const factory _NoInternetConnection() = _$_NoInternetConnection;
}
