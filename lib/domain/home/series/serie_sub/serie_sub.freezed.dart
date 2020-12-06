// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'serie_sub.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SerieSubTearOff {
  const _$SerieSubTearOff();

// ignore: unused_element
  _SerieSub call(
      {@required int id, @required String name, @required String posterPath}) {
    return _SerieSub(
      id: id,
      name: name,
      posterPath: posterPath,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SerieSub = _$SerieSubTearOff();

/// @nodoc
mixin _$SerieSub {
  int get id;
  String get name;
  String get posterPath;

  $SerieSubCopyWith<SerieSub> get copyWith;
}

/// @nodoc
abstract class $SerieSubCopyWith<$Res> {
  factory $SerieSubCopyWith(SerieSub value, $Res Function(SerieSub) then) =
      _$SerieSubCopyWithImpl<$Res>;
  $Res call({int id, String name, String posterPath});
}

/// @nodoc
class _$SerieSubCopyWithImpl<$Res> implements $SerieSubCopyWith<$Res> {
  _$SerieSubCopyWithImpl(this._value, this._then);

  final SerieSub _value;
  // ignore: unused_field
  final $Res Function(SerieSub) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
    ));
  }
}

/// @nodoc
abstract class _$SerieSubCopyWith<$Res> implements $SerieSubCopyWith<$Res> {
  factory _$SerieSubCopyWith(_SerieSub value, $Res Function(_SerieSub) then) =
      __$SerieSubCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String posterPath});
}

/// @nodoc
class __$SerieSubCopyWithImpl<$Res> extends _$SerieSubCopyWithImpl<$Res>
    implements _$SerieSubCopyWith<$Res> {
  __$SerieSubCopyWithImpl(_SerieSub _value, $Res Function(_SerieSub) _then)
      : super(_value, (v) => _then(v as _SerieSub));

  @override
  _SerieSub get _value => super._value as _SerieSub;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object posterPath = freezed,
  }) {
    return _then(_SerieSub(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
    ));
  }
}

/// @nodoc
class _$_SerieSub extends _SerieSub {
  const _$_SerieSub(
      {@required this.id, @required this.name, @required this.posterPath})
      : assert(id != null),
        assert(name != null),
        assert(posterPath != null),
        super._();

  @override
  final int id;
  @override
  final String name;
  @override
  final String posterPath;

  @override
  String toString() {
    return 'SerieSub(id: $id, name: $name, posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SerieSub &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(posterPath);

  @override
  _$SerieSubCopyWith<_SerieSub> get copyWith =>
      __$SerieSubCopyWithImpl<_SerieSub>(this, _$identity);
}

abstract class _SerieSub extends SerieSub {
  const _SerieSub._() : super._();
  const factory _SerieSub(
      {@required int id,
      @required String name,
      @required String posterPath}) = _$_SerieSub;

  @override
  int get id;
  @override
  String get name;
  @override
  String get posterPath;
  @override
  _$SerieSubCopyWith<_SerieSub> get copyWith;
}
