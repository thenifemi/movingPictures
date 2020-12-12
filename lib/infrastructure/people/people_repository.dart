import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/people/people.dart';
import '../../domain/people/people_failure.dart';
import '../../domain/people/people_interface.dart';
import '../core/firestore_helper.dart';

@LazySingleton(as: PeopleInterface)
class PeopleRepsitory extends PeopleInterface {
  final FirebaseFirestore _firestore;

  PeopleRepsitory(this._firestore);

  @override
  Future<Either<PeopleFailure, Unit>> followPerson(String personEmail) async {
    try {
      final peopleDoc = await _firestore.peopleDocument(personEmail);
      await peopleDoc.set({"personEmail": personEmail});

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const PeopleFailure.insufficientPermissions());
      } else {
        //log error
        return left(const PeopleFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PeopleFailure, Unit>> unFollowPerson(String personEmail) async {
    try {
      final peopleDoc = await _firestore.peopleDocument(personEmail);
      await peopleDoc.delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const PeopleFailure.insufficientPermissions());
      } else {
        //log error
        return left(const PeopleFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<PeopleFailure, List<Person>>> watchPeople() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc
        .collection('people')
        .snapshots()
        .map(
          (snapshot) => right<PeopleFailure, List<Person>>(
            snapshot.docs.map((doc) => Person.fromFirebase(doc)).toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const PeopleFailure.insufficientPermissions());
      } else {
        return left(const PeopleFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<PeopleFailure, Person>> getPersonSearchQuery(
      String personEmail) async {
    try {
      final personDoc =
          await _firestore.collection('users').doc(personEmail).get();

      return right(Person.fromFirebase(personDoc));
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const PeopleFailure.insufficientPermissions());
      } else {
        //log error
        return left(const PeopleFailure.unexpected());
      }
    }
  }
}
