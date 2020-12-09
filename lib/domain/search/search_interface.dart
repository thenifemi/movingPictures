import 'package:dartz/dartz.dart';
import 'package:movingPictures/domain/home/movies/movie/movies_failure.dart';
import 'package:movingPictures/domain/home/movies/movie_sub/movie_sub.dart';
import 'package:movingPictures/domain/home/series/serie_sub/serie_sub.dart';
import 'package:movingPictures/domain/search/search.dart';

abstract class SearchInterface {
  Future<Either<MovieFailure, List<Either<MovieSub, SerieSub>>>> getTrending();
  Future<Either<MovieFailure, List<Search>>> getSearchQuery();
}
