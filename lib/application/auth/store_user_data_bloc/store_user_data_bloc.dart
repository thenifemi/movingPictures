import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movingPictures/domain/auth/app_user_data/app_user_data.dart';
import 'package:movingPictures/domain/auth/app_user_data/app_user_data_failure.dart';
import 'package:movingPictures/domain/auth/app_user_data/app_user_data_interface.dart';
import 'package:movingPictures/domain/auth/auth_repository_interface.dart';
import 'package:movingPictures/domain/core/errors.dart';

import '../../../injection.dart';

part 'store_user_data_event.dart';
part 'store_user_data_state.dart';
part 'store_user_data_bloc.freezed.dart';

class StoreUserDataBloc extends Bloc<StoreUserDataEvent, StoreUserDataState> {
  final AppUserDataInterface _appUserDataInterface;
  StoreUserDataBloc(
    this._appUserDataInterface,
  ) : super(const _Initial());

  @override
  Stream<StoreUserDataState> mapEventToState(
    StoreUserDataEvent event,
  ) async* {
    yield const StoreUserDataState.actionInProgress();
    final userOption = await getIt<AuthInterface>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final AppUserData appUserData = AppUserData(
      id: user.id,
      name: user.name,
      email: user.email,
      photoUrl: user.photoUrl,
    );

    event.map(
      created: (e) async* {
        final possibleFailure = await _appUserDataInterface.create(appUserData);
        possibleFailure.fold(
          (f) => StoreUserDataState.createFailure(f),
          (_) => const StoreUserDataState.createSuccess(),
        );
      },
      updated: (e) async* {
        final possibleFailure = await _appUserDataInterface.update(appUserData);
        possibleFailure.fold(
          (f) => StoreUserDataState.updateFailure(f),
          (_) => const StoreUserDataState.updateSuccess(),
        );
      },
      deleted: (e) async* {
        final possibleFailure = await _appUserDataInterface.delete(appUserData);
        possibleFailure.fold(
          (f) => StoreUserDataState.deleteFailure(f),
          (_) => const StoreUserDataState.deleteSuccess(),
        );
      },
    );
  }
}
