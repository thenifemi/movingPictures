// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'app_user_data_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AppUserDataDto _$AppUserDataDtoFromJson(Map<String, dynamic> json) {
  return _AppUserDataDto.fromJson(json);
}

/// @nodoc
class _$AppUserDataDtoTearOff {
  const _$AppUserDataDtoTearOff();

// ignore: unused_element
  _AppUserDataDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String photoUrl}) {
    return _AppUserDataDto(
      id: id,
      name: name,
      photoUrl: photoUrl,
    );
  }

// ignore: unused_element
  AppUserDataDto fromJson(Map<String, Object> json) {
    return AppUserDataDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AppUserDataDto = _$AppUserDataDtoTearOff();

/// @nodoc
mixin _$AppUserDataDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get photoUrl;

  Map<String, dynamic> toJson();
  $AppUserDataDtoCopyWith<AppUserDataDto> get copyWith;
}

/// @nodoc
abstract class $AppUserDataDtoCopyWith<$Res> {
  factory $AppUserDataDtoCopyWith(
          AppUserDataDto value, $Res Function(AppUserDataDto) then) =
      _$AppUserDataDtoCopyWithImpl<$Res>;
  $Res call({@JsonKey(ignore: true) String id, String name, String photoUrl});
}

/// @nodoc
class _$AppUserDataDtoCopyWithImpl<$Res>
    implements $AppUserDataDtoCopyWith<$Res> {
  _$AppUserDataDtoCopyWithImpl(this._value, this._then);

  final AppUserDataDto _value;
  // ignore: unused_field
  final $Res Function(AppUserDataDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

/// @nodoc
abstract class _$AppUserDataDtoCopyWith<$Res>
    implements $AppUserDataDtoCopyWith<$Res> {
  factory _$AppUserDataDtoCopyWith(
          _AppUserDataDto value, $Res Function(_AppUserDataDto) then) =
      __$AppUserDataDtoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(ignore: true) String id, String name, String photoUrl});
}

/// @nodoc
class __$AppUserDataDtoCopyWithImpl<$Res>
    extends _$AppUserDataDtoCopyWithImpl<$Res>
    implements _$AppUserDataDtoCopyWith<$Res> {
  __$AppUserDataDtoCopyWithImpl(
      _AppUserDataDto _value, $Res Function(_AppUserDataDto) _then)
      : super(_value, (v) => _then(v as _AppUserDataDto));

  @override
  _AppUserDataDto get _value => super._value as _AppUserDataDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object photoUrl = freezed,
  }) {
    return _then(_AppUserDataDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AppUserDataDto extends _AppUserDataDto {
  const _$_AppUserDataDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.photoUrl})
      : assert(name != null),
        assert(photoUrl != null),
        super._();

  factory _$_AppUserDataDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AppUserDataDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'AppUserDataDto(id: $id, name: $name, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AppUserDataDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photoUrl);

  @override
  _$AppUserDataDtoCopyWith<_AppUserDataDto> get copyWith =>
      __$AppUserDataDtoCopyWithImpl<_AppUserDataDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AppUserDataDtoToJson(this);
  }
}

abstract class _AppUserDataDto extends AppUserDataDto {
  const _AppUserDataDto._() : super._();
  const factory _AppUserDataDto(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String photoUrl}) = _$_AppUserDataDto;

  factory _AppUserDataDto.fromJson(Map<String, dynamic> json) =
      _$_AppUserDataDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get photoUrl;
  @override
  _$AppUserDataDtoCopyWith<_AppUserDataDto> get copyWith;
}
