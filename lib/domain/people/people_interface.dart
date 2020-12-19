import 'package:dartz/dartz.dart';

import 'people.dart';
import 'people_failure.dart';

abstract class PeopleInterface {
  Stream<Either<PeopleFailure, List<Person>>> watchPeople();
  Stream<Either<PeopleFailure, List<Person>>> watchFullPeople(String email);
  Future<Either<PeopleFailure, Unit>> followPerson(String personEmail);
  Future<Either<PeopleFailure, Unit>> unFollowPerson(String personEmail);
  Future<Either<PeopleFailure, Person>> getPersonSearchQuery(
      String personEmail);
}
