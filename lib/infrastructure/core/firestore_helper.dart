import 'package:cloud_firestore/cloud_firestore.dart';

import '../../domain/auth/auth_repository_interface.dart';
import '../../domain/core/errors.dart';
import '../../injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<AuthInterface>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance.collection('users').doc(user.email);
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get userDataCollection => collection('userdata');
}
