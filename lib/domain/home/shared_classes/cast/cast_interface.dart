import 'package:dartz/dartz.dart';

import 'cast.dart';
import 'cast_failure.dart';

abstract class CastInterface {
  Future<Either<CastFailure, Cast>> getMovie(int castId);
}
