import 'package:dartz/dartz.dart';

import '../home/movies/movie/movies_failure.dart';
import 'search.dart';

abstract class SearchInterface {
  Future<Either<MovieFailure, List<Search>>> getTrending();
  Future<Either<MovieFailure, List<Search>>> getSearchQuery(String query);
}
