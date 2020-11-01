import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
abstract class AppUser implements _$AppUser {
  const factory AppUser({
    @JsonKey(ignore: true) UniqueId id,
    @required String name,
    @required String photoUrl,
    @required String email,
  }) = _AppUser;

  const AppUser._();

  AppUser toDomain() {
    return AppUser(
      id: id,
      name: name,
      photoUrl: photoUrl,
      email: email,
    );
  }

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  factory AppUser.fromFirebase(DocumentSnapshot doc) {
    return AppUser.fromJson(doc.data())
        .copyWith(id: UniqueId.fromUniqueString(doc.id));
  }
}
