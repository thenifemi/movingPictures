// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_sub.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MovieSubTearOff {
  const _$MovieSubTearOff();

// ignore: unused_element
  _MovieSub call(
      {@required int id, @required String title, @required String posterPath}) {
    return _MovieSub(
      id: id,
      title: title,
      posterPath: posterPath,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MovieSub = _$MovieSubTearOff();

/// @nodoc
mixin _$MovieSub {
  int get id;
  String get title;
  String get posterPath;

  $MovieSubCopyWith<MovieSub> get copyWith;
}

/// @nodoc
abstract class $MovieSubCopyWith<$Res> {
  factory $MovieSubCopyWith(MovieSub value, $Res Function(MovieSub) then) =
      _$MovieSubCopyWithImpl<$Res>;
  $Res call({int id, String title, String posterPath});
}

/// @nodoc
class _$MovieSubCopyWithImpl<$Res> implements $MovieSubCopyWith<$Res> {
  _$MovieSubCopyWithImpl(this._value, this._then);

  final MovieSub _value;
  // ignore: unused_field
  final $Res Function(MovieSub) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieSubCopyWith<$Res> implements $MovieSubCopyWith<$Res> {
  factory _$MovieSubCopyWith(_MovieSub value, $Res Function(_MovieSub) then) =
      __$MovieSubCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String posterPath});
}

/// @nodoc
class __$MovieSubCopyWithImpl<$Res> extends _$MovieSubCopyWithImpl<$Res>
    implements _$MovieSubCopyWith<$Res> {
  __$MovieSubCopyWithImpl(_MovieSub _value, $Res Function(_MovieSub) _then)
      : super(_value, (v) => _then(v as _MovieSub));

  @override
  _MovieSub get _value => super._value as _MovieSub;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object posterPath = freezed,
  }) {
    return _then(_MovieSub(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      posterPath:
          posterPath == freezed ? _value.posterPath : posterPath as String,
    ));
  }
}

/// @nodoc
class _$_MovieSub extends _MovieSub {
  const _$_MovieSub(
      {@required this.id, @required this.title, @required this.posterPath})
      : assert(id != null),
        assert(title != null),
        assert(posterPath != null),
        super._();

  @override
  final int id;
  @override
  final String title;
  @override
  final String posterPath;

  @override
  String toString() {
    return 'MovieSub(id: $id, title: $title, posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieSub &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(posterPath);

  @override
  _$MovieSubCopyWith<_MovieSub> get copyWith =>
      __$MovieSubCopyWithImpl<_MovieSub>(this, _$identity);
}

abstract class _MovieSub extends MovieSub {
  const _MovieSub._() : super._();
  const factory _MovieSub(
      {@required int id,
      @required String title,
      @required String posterPath}) = _$_MovieSub;

  @override
  int get id;
  @override
  String get title;
  @override
  String get posterPath;
  @override
  _$MovieSubCopyWith<_MovieSub> get copyWith;
}
