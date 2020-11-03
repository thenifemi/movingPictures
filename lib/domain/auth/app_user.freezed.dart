// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  return _AppUser.fromJson(json);
}

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

// ignore: unused_element
  _AppUser call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String photoURL,
      @required String email}) {
    return _AppUser(
      id: id,
      name: name,
      photoURL: photoURL,
      email: email,
    );
  }

// ignore: unused_element
  AppUser fromJson(Map<String, Object> json) {
    return AppUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get photoURL;
  String get email;

  Map<String, dynamic> toJson();
  $AppUserCopyWith<AppUser> get copyWith;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String photoURL,
      String email});
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
    Object photoURL = freezed,
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String photoURL,
      String email});
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
    Object photoURL = freezed,
    Object email = freezed,
  }) {
    return _then(_AppUser(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      photoURL: photoURL == freezed ? _value.photoURL : photoURL as String,
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppUser extends _AppUser {
  const _$_AppUser(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.photoURL,
      @required this.email})
      : assert(name != null),
        assert(photoURL != null),
        assert(email != null),
        super._();

  factory _$_AppUser.fromJson(Map<String, dynamic> json) =>
      _$_$_AppUserFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String photoURL;
  @override
  final String email;

  @override
  String toString() {
    return 'AppUser(id: $id, name: $name, photoURL: $photoURL, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoURL, photoURL) ||
                const DeepCollectionEquality()
                    .equals(other.photoURL, photoURL)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoURL) ^
      const DeepCollectionEquality().hash(email);

  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppUserToJson(this);
  }
}

abstract class _AppUser extends AppUser {
  const _AppUser._() : super._();
  const factory _AppUser(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String photoURL,
      @required String email}) = _$_AppUser;

  factory _AppUser.fromJson(Map<String, dynamic> json) = _$_AppUser.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get photoURL;
  @override
  String get email;
  @override
  _$AppUserCopyWith<_AppUser> get copyWith;
}
