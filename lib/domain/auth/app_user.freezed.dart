// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

// ignore: unused_element
  _AppUser call(
      {@required UniqueId id,
      @required String name,
      @required String photoUrl,
      @required String email}) {
    return _AppUser(
      id: id,
      name: name,
      photoUrl: photoUrl,
      email: email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  UniqueId get id;
  String get name;
  String get photoUrl;
  String get email;

  $AppUserCopyWith<AppUser> get copyWith;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name, String photoUrl, String email});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name, String photoUrl, String email});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(_AppUser _value, $Res Function(_AppUser) _then)
      : super(_value, (v) => _then(v as _AppUser));

  @override
  _AppUser get _value => super._value as _AppUser;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
    Object email = freezed,
  }) {
    return _then(_AppUser(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_AppUser implements _AppUser {
  const _$_AppUser(
      {@required this.id,
      @required this.name,
      @required this.photoUrl,
      @required this.email})
      : assert(id != null),
        assert(name != null),
        assert(photoUrl != null),
        assert(email != null);

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String photoUrl;
  @override
  final String email;

  @override
  String toString() {
    return 'AppUser(id: $id, name: $name, photoUrl: $photoUrl, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(email);

  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);
}

abstract class _AppUser implements AppUser {
  const factory _AppUser(
      {@required UniqueId id,
      @required String name,
      @required String photoUrl,
      @required String email}) = _$_AppUser;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get photoUrl;
  @override
  String get email;
  @override
  _$AppUserCopyWith<_AppUser> get copyWith;
}
