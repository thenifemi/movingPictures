import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
abstract class AppUser implements _$AppUser {
  const factory AppUser({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String photoURL,
    @required String email,
  }) = _AppUser;

  const AppUser._();

  AppUser toDomain() {
    return AppUser(
      id: id,
      name: name,
      photoURL: photoURL,
      email: email,
    );
  }

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  factory AppUser.fromFirebase(DocumentSnapshot doc) {
    return AppUser.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
