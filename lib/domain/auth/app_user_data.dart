import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movingPictures/domain/core/value_objects.dart';

part 'app_user_data.freezed.dart';

@freezed
abstract class AppUserData implements _$AppUserData {
  const factory AppUserData({
    @required UniqueId id,
    @required String name,
    @required String photoUrl,
  }) = _AppUserData;

  const AppUserData._();

  factory AppUserData.empty() => AppUserData(
        id: UniqueId(),
        name: '',
        photoUrl: '',
      );
}
