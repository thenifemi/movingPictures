// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Cast _$CastFromJson(Map<String, dynamic> json) {
  return _Cast.fromJson(json);
}

/// @nodoc
class _$CastTearOff {
  const _$CastTearOff();

// ignore: unused_element
  _Cast call(
      {@required int id, @required String name, @required String profilePath}) {
    return _Cast(
      id: id,
      name: name,
      profilePath: profilePath,
    );
  }

// ignore: unused_element
  Cast fromJson(Map<String, Object> json) {
    return Cast.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Cast = _$CastTearOff();

/// @nodoc
mixin _$Cast {
  int get id;
  String get name;
  String get profilePath;

  Map<String, dynamic> toJson();
  $CastCopyWith<Cast> get copyWith;
}

/// @nodoc
abstract class $CastCopyWith<$Res> {
  factory $CastCopyWith(Cast value, $Res Function(Cast) then) =
      _$CastCopyWithImpl<$Res>;
  $Res call({int id, String name, String profilePath});
}

/// @nodoc
class _$CastCopyWithImpl<$Res> implements $CastCopyWith<$Res> {
  _$CastCopyWithImpl(this._value, this._then);

  final Cast _value;
  // ignore: unused_field
  final $Res Function(Cast) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

/// @nodoc
abstract class _$CastCopyWith<$Res> implements $CastCopyWith<$Res> {
  factory _$CastCopyWith(_Cast value, $Res Function(_Cast) then) =
      __$CastCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String profilePath});
}

/// @nodoc
class __$CastCopyWithImpl<$Res> extends _$CastCopyWithImpl<$Res>
    implements _$CastCopyWith<$Res> {
  __$CastCopyWithImpl(_Cast _value, $Res Function(_Cast) _then)
      : super(_value, (v) => _then(v as _Cast));

  @override
  _Cast get _value => super._value as _Cast;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object profilePath = freezed,
  }) {
    return _then(_Cast(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      profilePath:
          profilePath == freezed ? _value.profilePath : profilePath as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Cast extends _Cast {
  const _$_Cast(
      {@required this.id, @required this.name, @required this.profilePath})
      : assert(id != null),
        assert(name != null),
        assert(profilePath != null),
        super._();

  factory _$_Cast.fromJson(Map<String, dynamic> json) =>
      _$_$_CastFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String profilePath;

  @override
  String toString() {
    return 'Cast(id: $id, name: $name, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Cast &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profilePath, profilePath) ||
                const DeepCollectionEquality()
                    .equals(other.profilePath, profilePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profilePath);

  @override
  _$CastCopyWith<_Cast> get copyWith =>
      __$CastCopyWithImpl<_Cast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CastToJson(this);
  }
}

abstract class _Cast extends Cast {
  const _Cast._() : super._();
  const factory _Cast(
      {@required int id,
      @required String name,
      @required String profilePath}) = _$_Cast;

  factory _Cast.fromJson(Map<String, dynamic> json) = _$_Cast.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get profilePath;
  @override
  _$CastCopyWith<_Cast> get copyWith;
}
