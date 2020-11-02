import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../../domain/auth/app_user.dart';

extension FirebaseUserDomainX on firebase.User {
  AppUser toDomain() {
    return AppUser(
      id: uid,
      name: displayName,
      photoUrl: photoURL,
      email: email,
    );
  }
}
