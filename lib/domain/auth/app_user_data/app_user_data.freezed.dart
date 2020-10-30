// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AppUserDataTearOff {
  const _$AppUserDataTearOff();

// ignore: unused_element
  _AppUserData call(
      {@required UniqueId id,
      @required String name,
      @required String email,
      @required String photoUrl}) {
    return _AppUserData(
      id: id,
      name: name,
      email: email,
      photoUrl: photoUrl,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AppUserData = _$AppUserDataTearOff();

/// @nodoc
mixin _$AppUserData {
  UniqueId get id;
  String get name;
  String get email;
  String get photoUrl;

  $AppUserDataCopyWith<AppUserData> get copyWith;
}

/// @nodoc
abstract class $AppUserDataCopyWith<$Res> {
  factory $AppUserDataCopyWith(
          AppUserData value, $Res Function(AppUserData) then) =
      _$AppUserDataCopyWithImpl<$Res>;
  $Res call({UniqueId id, String name, String email, String photoUrl});
}

/// @nodoc
class _$AppUserDataCopyWithImpl<$Res> implements $AppUserDataCopyWith<$Res> {
  _$AppUserDataCopyWithImpl(this._value, this._then);

  final AppUserData _value;
  // ignore: unused_field
  final $Res Function(AppUserData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$AppUserDataCopyWith<$Res>
    implements $AppUserDataCopyWith<$Res> {
  factory _$AppUserDataCopyWith(
          _AppUserData value, $Res Function(_AppUserData) then) =
      __$AppUserDataCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String name, String email, String photoUrl});
}

/// @nodoc
class __$AppUserDataCopyWithImpl<$Res> extends _$AppUserDataCopyWithImpl<$Res>
    implements _$AppUserDataCopyWith<$Res> {
  __$AppUserDataCopyWithImpl(
      _AppUserData _value, $Res Function(_AppUserData) _then)
      : super(_value, (v) => _then(v as _AppUserData));

  @override
  _AppUserData get _value => super._value as _AppUserData;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_AppUserData(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as String,
      email: email == freezed ? _value.email : email as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

/// @nodoc
class _$_AppUserData extends _AppUserData with DiagnosticableTreeMixin {
  const _$_AppUserData(
      {@required this.id,
      @required this.name,
      @required this.email,
      @required this.photoUrl})
      : assert(id != null),
        assert(name != null),
        assert(email != null),
        assert(photoUrl != null),
        super._();

  @override
  final UniqueId id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String photoUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppUserData(id: $id, name: $name, email: $email, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppUserData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('photoUrl', photoUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUserData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(photoUrl);

  @override
  _$AppUserDataCopyWith<_AppUserData> get copyWith =>
      __$AppUserDataCopyWithImpl<_AppUserData>(this, _$identity);
}

abstract class _AppUserData extends AppUserData {
  const _AppUserData._() : super._();
  const factory _AppUserData(
      {@required UniqueId id,
      @required String name,
      @required String email,
      @required String photoUrl}) = _$_AppUserData;

  @override
  UniqueId get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get photoUrl;
  @override
  _$AppUserDataCopyWith<_AppUserData> get copyWith;
}
