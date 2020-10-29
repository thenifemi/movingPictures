import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movingPictures/domain/core/value_objects.dart';

import '../../../domain/auth/app_user_data/app_user_data.dart';

part 'app_user_data_dtos.freezed.dart';
part 'app_user_data_dtos.g.dart';

@freezed
abstract class AppUserDataDto implements _$AppUserDataDto {
  const factory AppUserDataDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String photoUrl,
  }) = _AppUserDataDto;

  const AppUserDataDto._();

  factory AppUserDataDto.fromDomain(AppUserData appUserData) {
    return AppUserDataDto(
      name: appUserData.name,
      photoUrl: appUserData.photoUrl,
    );
  }

  AppUserData toDomain() {
    return AppUserData(
      id: UniqueId.fromUniqueString(id),
      name: name,
      photoUrl: photoUrl,
    );
  }

  factory AppUserDataDto.fromJson(Map<String, dynamic> json) =>
      _$AppUserDataDtoFromJson(json);

  factory AppUserDataDto.fromFirestore(DocumentSnapshot doc) {
    return AppUserDataDto.fromJson(doc.data()).copyWith(id: doc.id);
  }
}
