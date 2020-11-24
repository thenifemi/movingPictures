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

// ignore: unused_element
  _SimilarMoviesCalled similarMoviesCalled(int movieId) {
    return _SimilarMoviesCalled(
      movieId,
    );
  }

// ignore: unused_element
  _BannerMovieCalled bannerMovieCalled(int movieId) {
    return _BannerMovieCalled(
      movieId,
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
    @required Result similarMoviesCalled(int movieId),
    @required Result bannerMovieCalled(int movieId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result movieTypeCalled(String movieListType),
    Result movieByGenreCalled(int movieGenreId),
    Result similarMoviesCalled(int movieId),
    Result bannerMovieCalled(int movieId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result movieTypeCalled(_MovieTypeCalled value),
    @required Result movieByGenreCalled(_MovieByGenreCalled value),
    @required Result similarMoviesCalled(_SimilarMoviesCalled value),
    @required Result bannerMovieCalled(_BannerMovieCalled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result movieTypeCalled(_MovieTypeCalled value),
    Result movieByGenreCalled(_MovieByGenreCalled value),
    Result similarMoviesCalled(_SimilarMoviesCalled value),
    Result bannerMovieCalled(_BannerMovieCalled value),
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
    @required Result similarMoviesCalled(int movieId),
    @required Result bannerMovieCalled(int movieId),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    assert(similarMoviesCalled != null);
    assert(bannerMovieCalled != null);
    return movieTypeCalled(movieListType);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result movieTypeCalled(String movieListType),
    Result movieByGenreCalled(int movieGenreId),
    Result similarMoviesCalled(int movieId),
    Result bannerMovieCalled(int movieId),
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
    @required Result similarMoviesCalled(_SimilarMoviesCalled value),
    @required Result bannerMovieCalled(_BannerMovieCalled value),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    assert(similarMoviesCalled != null);
    assert(bannerMovieCalled != null);
    return movieTypeCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result movieTypeCalled(_MovieTypeCalled value),
    Result movieByGenreCalled(_MovieByGenreCalled value),
    Result similarMoviesCalled(_SimilarMoviesCalled value),
    Result bannerMovieCalled(_BannerMovieCalled value),
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
    @required Result similarMoviesCalled(int movieId),
    @required Result bannerMovieCalled(int movieId),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    assert(similarMoviesCalled != null);
    assert(bannerMovieCalled != null);
    return movieByGenreCalled(movieGenreId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result movieTypeCalled(String movieListType),
    Result movieByGenreCalled(int movieGenreId),
    Result similarMoviesCalled(int movieId),
    Result bannerMovieCalled(int movieId),
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
    @required Result similarMoviesCalled(_SimilarMoviesCalled value),
    @required Result bannerMovieCalled(_BannerMovieCalled value),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    assert(similarMoviesCalled != null);
    assert(bannerMovieCalled != null);
    return movieByGenreCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result movieTypeCalled(_MovieTypeCalled value),
    Result movieByGenreCalled(_MovieByGenreCalled value),
    Result similarMoviesCalled(_SimilarMoviesCalled value),
    Result bannerMovieCalled(_BannerMovieCalled value),
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
abstract class _$SimilarMoviesCalledCopyWith<$Res> {
  factory _$SimilarMoviesCalledCopyWith(_SimilarMoviesCalled value,
          $Res Function(_SimilarMoviesCalled) then) =
      __$SimilarMoviesCalledCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class __$SimilarMoviesCalledCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res>
    implements _$SimilarMoviesCalledCopyWith<$Res> {
  __$SimilarMoviesCalledCopyWithImpl(
      _SimilarMoviesCalled _value, $Res Function(_SimilarMoviesCalled) _then)
      : super(_value, (v) => _then(v as _SimilarMoviesCalled));

  @override
  _SimilarMoviesCalled get _value => super._value as _SimilarMoviesCalled;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(_SimilarMoviesCalled(
      movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

/// @nodoc
class _$_SimilarMoviesCalled implements _SimilarMoviesCalled {
  const _$_SimilarMoviesCalled(this.movieId) : assert(movieId != null);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MoviesEvent.similarMoviesCalled(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimilarMoviesCalled &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @override
  _$SimilarMoviesCalledCopyWith<_SimilarMoviesCalled> get copyWith =>
      __$SimilarMoviesCalledCopyWithImpl<_SimilarMoviesCalled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result movieTypeCalled(String movieListType),
    @required Result movieByGenreCalled(int movieGenreId),
    @required Result similarMoviesCalled(int movieId),
    @required Result bannerMovieCalled(int movieId),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    assert(similarMoviesCalled != null);
    assert(bannerMovieCalled != null);
    return similarMoviesCalled(movieId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result movieTypeCalled(String movieListType),
    Result movieByGenreCalled(int movieGenreId),
    Result similarMoviesCalled(int movieId),
    Result bannerMovieCalled(int movieId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (similarMoviesCalled != null) {
      return similarMoviesCalled(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result movieTypeCalled(_MovieTypeCalled value),
    @required Result movieByGenreCalled(_MovieByGenreCalled value),
    @required Result similarMoviesCalled(_SimilarMoviesCalled value),
    @required Result bannerMovieCalled(_BannerMovieCalled value),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    assert(similarMoviesCalled != null);
    assert(bannerMovieCalled != null);
    return similarMoviesCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result movieTypeCalled(_MovieTypeCalled value),
    Result movieByGenreCalled(_MovieByGenreCalled value),
    Result similarMoviesCalled(_SimilarMoviesCalled value),
    Result bannerMovieCalled(_BannerMovieCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (similarMoviesCalled != null) {
      return similarMoviesCalled(this);
    }
    return orElse();
  }
}

abstract class _SimilarMoviesCalled implements MoviesEvent {
  const factory _SimilarMoviesCalled(int movieId) = _$_SimilarMoviesCalled;

  int get movieId;
  _$SimilarMoviesCalledCopyWith<_SimilarMoviesCalled> get copyWith;
}

/// @nodoc
abstract class _$BannerMovieCalledCopyWith<$Res> {
  factory _$BannerMovieCalledCopyWith(
          _BannerMovieCalled value, $Res Function(_BannerMovieCalled) then) =
      __$BannerMovieCalledCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class __$BannerMovieCalledCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res>
    implements _$BannerMovieCalledCopyWith<$Res> {
  __$BannerMovieCalledCopyWithImpl(
      _BannerMovieCalled _value, $Res Function(_BannerMovieCalled) _then)
      : super(_value, (v) => _then(v as _BannerMovieCalled));

  @override
  _BannerMovieCalled get _value => super._value as _BannerMovieCalled;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(_BannerMovieCalled(
      movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

/// @nodoc
class _$_BannerMovieCalled implements _BannerMovieCalled {
  const _$_BannerMovieCalled(this.movieId) : assert(movieId != null);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MoviesEvent.bannerMovieCalled(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BannerMovieCalled &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @override
  _$BannerMovieCalledCopyWith<_BannerMovieCalled> get copyWith =>
      __$BannerMovieCalledCopyWithImpl<_BannerMovieCalled>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result movieTypeCalled(String movieListType),
    @required Result movieByGenreCalled(int movieGenreId),
    @required Result similarMoviesCalled(int movieId),
    @required Result bannerMovieCalled(int movieId),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    assert(similarMoviesCalled != null);
    assert(bannerMovieCalled != null);
    return bannerMovieCalled(movieId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result movieTypeCalled(String movieListType),
    Result movieByGenreCalled(int movieGenreId),
    Result similarMoviesCalled(int movieId),
    Result bannerMovieCalled(int movieId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bannerMovieCalled != null) {
      return bannerMovieCalled(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result movieTypeCalled(_MovieTypeCalled value),
    @required Result movieByGenreCalled(_MovieByGenreCalled value),
    @required Result similarMoviesCalled(_SimilarMoviesCalled value),
    @required Result bannerMovieCalled(_BannerMovieCalled value),
  }) {
    assert(movieTypeCalled != null);
    assert(movieByGenreCalled != null);
    assert(similarMoviesCalled != null);
    assert(bannerMovieCalled != null);
    return bannerMovieCalled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result movieTypeCalled(_MovieTypeCalled value),
    Result movieByGenreCalled(_MovieByGenreCalled value),
    Result similarMoviesCalled(_SimilarMoviesCalled value),
    Result bannerMovieCalled(_BannerMovieCalled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bannerMovieCalled != null) {
      return bannerMovieCalled(this);
    }
    return orElse();
  }
}

abstract class _BannerMovieCalled implements MoviesEvent {
  const factory _BannerMovieCalled(int movieId) = _$_BannerMovieCalled;

  int get movieId;
  _$BannerMovieCalledCopyWith<_BannerMovieCalled> get copyWith;
}

/// @nodoc
class _$MoviesStateTearOff {
  const _$MoviesStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Movie> movies) {
    return _LoadSuccess(
      movies,
    );
  }

// ignore: unused_element
  _LoadSuccessforBannerMovie loadSuccessforBannerMovie(Movie movie) {
    return _LoadSuccessforBannerMovie(
      movie,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(MovieFailure movieFailure) {
    return _LoadFailure(
      movieFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MoviesState = _$MoviesStateTearOff();

/// @nodoc
mixin _$MoviesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Movie> movies),
    @required Result loadSuccessforBannerMovie(Movie movie),
    @required Result loadFailure(MovieFailure movieFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Movie> movies),
    Result loadSuccessforBannerMovie(Movie movie),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required
        Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  final MoviesState _value;
  // ignore: unused_field
  final $Res Function(MoviesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MoviesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Movie> movies),
    @required Result loadSuccessforBannerMovie(Movie movie),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Movie> movies),
    Result loadSuccessforBannerMovie(Movie movie),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required
        Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MoviesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MoviesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Movie> movies),
    @required Result loadSuccessforBannerMovie(Movie movie),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Movie> movies),
    Result loadSuccessforBannerMovie(Movie movie),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required
        Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MoviesState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object movies = freezed,
  }) {
    return _then(_LoadSuccess(
      movies == freezed ? _value.movies : movies as List<Movie>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.movies) : assert(movies != null);

  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'MoviesState.loadSuccess(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Movie> movies),
    @required Result loadSuccessforBannerMovie(Movie movie),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return loadSuccess(movies);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Movie> movies),
    Result loadSuccessforBannerMovie(Movie movie),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required
        Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements MoviesState {
  const factory _LoadSuccess(List<Movie> movies) = _$_LoadSuccess;

  List<Movie> get movies;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessforBannerMovieCopyWith<$Res> {
  factory _$LoadSuccessforBannerMovieCopyWith(_LoadSuccessforBannerMovie value,
          $Res Function(_LoadSuccessforBannerMovie) then) =
      __$LoadSuccessforBannerMovieCopyWithImpl<$Res>;
  $Res call({Movie movie});
}

/// @nodoc
class __$LoadSuccessforBannerMovieCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res>
    implements _$LoadSuccessforBannerMovieCopyWith<$Res> {
  __$LoadSuccessforBannerMovieCopyWithImpl(_LoadSuccessforBannerMovie _value,
      $Res Function(_LoadSuccessforBannerMovie) _then)
      : super(_value, (v) => _then(v as _LoadSuccessforBannerMovie));

  @override
  _LoadSuccessforBannerMovie get _value =>
      super._value as _LoadSuccessforBannerMovie;

  @override
  $Res call({
    Object movie = freezed,
  }) {
    return _then(_LoadSuccessforBannerMovie(
      movie == freezed ? _value.movie : movie as Movie,
    ));
  }
}

/// @nodoc
class _$_LoadSuccessforBannerMovie implements _LoadSuccessforBannerMovie {
  const _$_LoadSuccessforBannerMovie(this.movie) : assert(movie != null);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'MoviesState.loadSuccessforBannerMovie(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccessforBannerMovie &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie);

  @override
  _$LoadSuccessforBannerMovieCopyWith<_LoadSuccessforBannerMovie>
      get copyWith =>
          __$LoadSuccessforBannerMovieCopyWithImpl<_LoadSuccessforBannerMovie>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Movie> movies),
    @required Result loadSuccessforBannerMovie(Movie movie),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return loadSuccessforBannerMovie(movie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Movie> movies),
    Result loadSuccessforBannerMovie(Movie movie),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessforBannerMovie != null) {
      return loadSuccessforBannerMovie(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required
        Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return loadSuccessforBannerMovie(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccessforBannerMovie != null) {
      return loadSuccessforBannerMovie(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccessforBannerMovie implements MoviesState {
  const factory _LoadSuccessforBannerMovie(Movie movie) =
      _$_LoadSuccessforBannerMovie;

  Movie get movie;
  _$LoadSuccessforBannerMovieCopyWith<_LoadSuccessforBannerMovie> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({MovieFailure movieFailure});

  $MovieFailureCopyWith<$Res> get movieFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res> extends _$MoviesStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object movieFailure = freezed,
  }) {
    return _then(_LoadFailure(
      movieFailure == freezed
          ? _value.movieFailure
          : movieFailure as MovieFailure,
    ));
  }

  @override
  $MovieFailureCopyWith<$Res> get movieFailure {
    if (_value.movieFailure == null) {
      return null;
    }
    return $MovieFailureCopyWith<$Res>(_value.movieFailure, (value) {
      return _then(_value.copyWith(movieFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.movieFailure) : assert(movieFailure != null);

  @override
  final MovieFailure movieFailure;

  @override
  String toString() {
    return 'MoviesState.loadFailure(movieFailure: $movieFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.movieFailure, movieFailure) ||
                const DeepCollectionEquality()
                    .equals(other.movieFailure, movieFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadSuccess(List<Movie> movies),
    @required Result loadSuccessforBannerMovie(Movie movie),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return loadFailure(movieFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadSuccess(List<Movie> movies),
    Result loadSuccessforBannerMovie(Movie movie),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(movieFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadSuccess(_LoadSuccess value),
    @required
        Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadSuccess != null);
    assert(loadSuccessforBannerMovie != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadSuccess(_LoadSuccess value),
    Result loadSuccessforBannerMovie(_LoadSuccessforBannerMovie value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements MoviesState {
  const factory _LoadFailure(MovieFailure movieFailure) = _$_LoadFailure;

  MovieFailure get movieFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
