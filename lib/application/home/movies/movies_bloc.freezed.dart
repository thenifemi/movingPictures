// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MoviesEventTearOff {
  const _$MoviesEventTearOff();

// ignore: unused_element
  _MovieTypeCalled movieTypeCalled(String movieListType) {
    return _MovieTypeCalled(
      movieListType,
    );
  }

// ignore: unused_element
  _MovieByGenreCalled movieByGenreCalled(int movieGenreId) {
    return _MovieByGenreCalled(
      movieGenreId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MoviesEvent = _$MoviesEventTearOff();

/// @nodoc
mixin _$MoviesEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result movieTypeCalled(String movieListType),
    @required Result movieByGenreCalled(int movieGenreId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result movieTypeCalled(String movieListType),
    Result movieByGenreCalled(int movieGenreId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result movieTypeCalled(_MovieTypeCalled value),
    @required Result movieByGenreCalled(_MovieByGenreCalled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result movieTypeCalled(_MovieTypeCalled value),
    Result movieByGenreCalled(_MovieByGenreCalled value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res> implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  final MoviesEvent _value;
  // ignore: unused_field
  final $Res Function(MoviesEvent) _then;
}

/// @nodoc
abstract class _$MovieTypeCalledCopyWith<$Res> {
  factory _$MovieTypeCalledCopyWith(
          _MovieTypeCalled value, $Res Function(_MovieTypeCalled) then) =
      __$MovieTypeCalledCopyWithImpl<$Res>;
  $Res call({String movieListType});
}

/// @nodoc
class __$MovieTypeCalledCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res>
    implements _$MovieTypeCalledCopyWith<$Res> {
  __$MovieTypeCalledCopyWithImpl(
      _MovieTypeCalled _value, $Res Function(_MovieTypeCalled) _then)
      : super(_value, (v) => _then(v as _MovieTypeCalled));

  @override
  _MovieTypeCalled get _value => super._value as _MovieTypeCalled;

  @override
  $Res call({
    Object movieListType = freezed,
  }) {
    return _then(_MovieTypeCalled(
      movieListType == freezed ? _value.movieListType : movieListType as String,
    ));
  }
}

/// @nodoc
class _$_MovieTypeCalled implements _MovieTypeCalled {
  const _$_MovieTypeCalled(this.movieListType) : assert(movieListType != null);

  @override
  final String movieListType;

  @override
  String toString() {
    return 'MoviesEvent.movieTypeCalled(movieListType: $movieListType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieTypeCalled &&
            (identical(other.movieListType, movieListType) ||
                const DeepCollectionEquality()
                    .equals(other.movieListType, movieListType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieListType);

  @override
  _$MovieTypeCalledCopyWith<_MovieTypeCalled> get copyWith =>
      __$MovieTypeCalledCopyWithImpl<_MovieTypeCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result movieTypeCalled(String movieListType),
    @required Result movieByGenreCalled(int movieGenreId),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    return movieTypeCalled(movieListType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result movieTypeCalled(String movieListType),
    Result movieByGenreCalled(int movieGenreId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (movieTypeCalled != null) {
      return movieTypeCalled(movieListType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result movieTypeCalled(_MovieTypeCalled value),
    @required Result movieByGenreCalled(_MovieByGenreCalled value),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    return movieTypeCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result movieTypeCalled(_MovieTypeCalled value),
    Result movieByGenreCalled(_MovieByGenreCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (movieTypeCalled != null) {
      return movieTypeCalled(this);
    }
    return orElse();
  }
}

abstract class _MovieTypeCalled implements MoviesEvent {
  const factory _MovieTypeCalled(String movieListType) = _$_MovieTypeCalled;

  String get movieListType;
  _$MovieTypeCalledCopyWith<_MovieTypeCalled> get copyWith;
}

/// @nodoc
abstract class _$MovieByGenreCalledCopyWith<$Res> {
  factory _$MovieByGenreCalledCopyWith(
          _MovieByGenreCalled value, $Res Function(_MovieByGenreCalled) then) =
      __$MovieByGenreCalledCopyWithImpl<$Res>;
  $Res call({int movieGenreId});
}

/// @nodoc
class __$MovieByGenreCalledCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res>
    implements _$MovieByGenreCalledCopyWith<$Res> {
  __$MovieByGenreCalledCopyWithImpl(
      _MovieByGenreCalled _value, $Res Function(_MovieByGenreCalled) _then)
      : super(_value, (v) => _then(v as _MovieByGenreCalled));

  @override
  _MovieByGenreCalled get _value => super._value as _MovieByGenreCalled;

  @override
  $Res call({
    Object movieGenreId = freezed,
  }) {
    return _then(_MovieByGenreCalled(
      movieGenreId == freezed ? _value.movieGenreId : movieGenreId as int,
    ));
  }
}

/// @nodoc
class _$_MovieByGenreCalled implements _MovieByGenreCalled {
  const _$_MovieByGenreCalled(this.movieGenreId) : assert(movieGenreId != null);

  @override
  final int movieGenreId;

  @override
  String toString() {
    return 'MoviesEvent.movieByGenreCalled(movieGenreId: $movieGenreId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieByGenreCalled &&
            (identical(other.movieGenreId, movieGenreId) ||
                const DeepCollectionEquality()
                    .equals(other.movieGenreId, movieGenreId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieGenreId);

  @override
  _$MovieByGenreCalledCopyWith<_MovieByGenreCalled> get copyWith =>
      __$MovieByGenreCalledCopyWithImpl<_MovieByGenreCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result movieTypeCalled(String movieListType),
    @required Result movieByGenreCalled(int movieGenreId),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    return movieByGenreCalled(movieGenreId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result movieTypeCalled(String movieListType),
    Result movieByGenreCalled(int movieGenreId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (movieByGenreCalled != null) {
      return movieByGenreCalled(movieGenreId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result movieTypeCalled(_MovieTypeCalled value),
    @required Result movieByGenreCalled(_MovieByGenreCalled value),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    return movieByGenreCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result movieTypeCalled(_MovieTypeCalled value),
    Result movieByGenreCalled(_MovieByGenreCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (movieByGenreCalled != null) {
      return movieByGenreCalled(this);
    }
    return orElse();
  }
}

abstract class _MovieByGenreCalled implements MoviesEvent {
  const factory _MovieByGenreCalled(int movieGenreId) = _$_MovieByGenreCalled;

  int get movieGenreId;
  _$MovieByGenreCalledCopyWith<_MovieByGenreCalled> get copyWith;
}

/// @nodoc
class _$MoviesStateTearOff {
  const _$MoviesStateTearOff();

// ignore: unused_element
  _MovieState call(
      {@required
          List<Movie> movies,
      @required
          bool isLoading,
      @required
          bool showErrorMessages,
      @required
          Option<Either<MovieFailure, List<Movie>>> failureOrSuccessOption}) {
    return _MovieState(
      movies: movies,
      isLoading: isLoading,
      showErrorMessages: showErrorMessages,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MoviesState = _$MoviesStateTearOff();

/// @nodoc
mixin _$MoviesState {
  List<Movie> get movies;
  bool get isLoading;
  bool get showErrorMessages;
  Option<Either<MovieFailure, List<Movie>>> get failureOrSuccessOption;

  $MoviesStateCopyWith<MoviesState> get copyWith;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res>;
  $Res call(
      {List<Movie> movies,
      bool isLoading,
      bool showErrorMessages,
      Option<Either<MovieFailure, List<Movie>>> failureOrSuccessOption});
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  final MoviesState _value;
  // ignore: unused_field
  final $Res Function(MoviesState) _then;

  @override
  $Res call({
    Object movies = freezed,
    Object isLoading = freezed,
    Object showErrorMessages = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      movies: movies == freezed ? _value.movies : movies as List<Movie>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<MovieFailure, List<Movie>>>,
    ));
  }
}

/// @nodoc
abstract class _$MovieStateCopyWith<$Res>
    implements $MoviesStateCopyWith<$Res> {
  factory _$MovieStateCopyWith(
          _MovieState value, $Res Function(_MovieState) then) =
      __$MovieStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Movie> movies,
      bool isLoading,
      bool showErrorMessages,
      Option<Either<MovieFailure, List<Movie>>> failureOrSuccessOption});
}

/// @nodoc
class __$MovieStateCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$MovieStateCopyWith<$Res> {
  __$MovieStateCopyWithImpl(
      _MovieState _value, $Res Function(_MovieState) _then)
      : super(_value, (v) => _then(v as _MovieState));

  @override
  _MovieState get _value => super._value as _MovieState;

  @override
  $Res call({
    Object movies = freezed,
    Object isLoading = freezed,
    Object showErrorMessages = freezed,
    Object failureOrSuccessOption = freezed,
  }) {
    return _then(_MovieState(
      movies: movies == freezed ? _value.movies : movies as List<Movie>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption as Option<Either<MovieFailure, List<Movie>>>,
    ));
  }
}

/// @nodoc
class _$_MovieState implements _MovieState {
  const _$_MovieState(
      {@required this.movies,
      @required this.isLoading,
      @required this.showErrorMessages,
      @required this.failureOrSuccessOption})
      : assert(movies != null),
        assert(isLoading != null),
        assert(showErrorMessages != null),
        assert(failureOrSuccessOption != null);

  @override
  final List<Movie> movies;
  @override
  final bool isLoading;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<MovieFailure, List<Movie>>> failureOrSuccessOption;

  @override
  String toString() {
    return 'MoviesState(movies: $movies, isLoading: $isLoading, showErrorMessages: $showErrorMessages, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieState &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movies) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @override
  _$MovieStateCopyWith<_MovieState> get copyWith =>
      __$MovieStateCopyWithImpl<_MovieState>(this, _$identity);
}

abstract class _MovieState implements MoviesState {
  const factory _MovieState(
      {@required
          List<Movie> movies,
      @required
          bool isLoading,
      @required
          bool showErrorMessages,
      @required
          Option<Either<MovieFailure, List<Movie>>>
              failureOrSuccessOption}) = _$_MovieState;

  @override
  List<Movie> get movies;
  @override
  bool get isLoading;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<MovieFailure, List<Movie>>> get failureOrSuccessOption;
  @override
  _$MovieStateCopyWith<_MovieState> get copyWith;
}
