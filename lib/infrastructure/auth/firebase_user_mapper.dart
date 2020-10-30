import 'package:firebase_auth/firebase_auth.dart' as firebase;

import '../../domain/auth/app_user.dart';
import '../../domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  AppUser toDomain() {
    return AppUser(
      id: UniqueId.fromUniqueString(uid),
      name: displayName,
      photoUrl: photoURL,
      email: email,
    );
  }
}
